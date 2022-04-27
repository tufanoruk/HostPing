#!/usr/bin/env perl -w
#
# hostping.pl
#
# pings given host and return result as json object
# since this script uses icmp, it needs to run as
# root. But apache does not like this. So a wrapper
# program is used which runs as root with setuid set 
# (hostping.c)
#

use strict;
use warnings;

use CGI;
use JSON;
use Net::Ping;
use Net::Nslookup;
use Time::HiRes;

open (LOG, ">>../log/hostping.log");
# print LOG "in hostping.pl\n";

my $PING_RETRY_COUNT = 3;
my $HOSTS_FILE = '/etc/hosts';

my $q = new CGI;

my $phost = &trim($q->param("hostTxt"));

# print LOG "got param '$phost'\n";

my $host = $phost;
my $ret = 0;
my $duration = 0.0;
my $ip = '0.0.0.0';

my $msg = localtime();

my $isfqdn = &is_fqdn_valid($host);
my $isipaddr = &is_ipaddr_valid($host);

# print LOG "FQDN\n" if $isfqdn;
# print LOG "IP\n" if $isipaddr;

if ( $isfqdn || $isipaddr) {

  if ($isipaddr) {
  	# given host is an ip address
  	$ip = $host;
  	$host = &get_hostname ($ip);
  } 
  my $pip;
  ($ret, $duration, $pip) = &host_ping ($host);
  
  $ip = $pip if $pip;
  $ip = $phost if not $pip and $isipaddr;
  
  # print LOG "$ret; $duration; $ip\n";

  if ($ret) {
    $msg .= "<p>$host ($ip)</p><p>SUCEESS</p><p>$duration ms</p>";
  } else {
    $msg .= "<p>$host ($ip)</p><p>FAILED</p>";
  }

} else {
  $msg .= ";<p>$host is not a valid FQDN or IP address</p>"; 
}
my $result = $ret != 0 ? "success" : "failure";

my $json = qq{{"result": "$result", 
       	       "msg"   : "$msg"}};

# return JSON string
print $q->header(-type => "application/json", -charset => "utf-8");
print $json;

print LOG "$json\n";

# print LOG "leaving hostping.pl\n";
close LOG;

#######

sub host_ping {
  my $host = $_[0];

  # print LOG "will ping $host\n";

  my $p = Net::Ping->new("icmp", 3.0, 56); # protocol, timeout, data bytes
  $p->hires();

  my ($ret, $duration, $ip);

  for (my $i = 0; $i < $PING_RETRY_COUNT; $i++) {
    ($ret, $duration, $ip) = $p->ping ($host);
    # print LOG "*"; 
    last if ($ret);
    sleep 1;
  }
  $p->close();
  $duration = $duration * 1000.0; # to miliseconds
  
  # print LOG "$host\@$ip pinged\n";

  return ($ret, $duration, $ip);
}

#--------------------------------------------
# returns true if hostname is valid (regexp from stackoverflow)
#--------------------------------------------
sub is_fqdn_valid {
        my $fqdn = $_[0];
        return $fqdn =~ /^(([a-zA-Z]|[a-zA-Z][a-zA-Z0-9\-]*[a-zA-Z0-9])\.)*([A-Za-z]|[A-Za-z][A-Za-z0-9\-]*[A-Za-z0-9])$/;
}

#--------------------------------------------
# renurns true if ip address is valid (regexp from stackoverflow)
#--------------------------------------------
sub is_ipaddr_valid {
        my $ipaddr = $_[0];
        return $ipaddr =~ /^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/;
}


#--------------------------------------------
# trim space from head and tail of the string
#--------------------------------------------
sub trim($) {
        my $string = shift;
        $string =~ s/^\s+//;
        $string =~ s/\s+$//;
        return $string;
}

#--------------------------------------------
# finds hostname of given id from DNS or hosts file
#--------------------------------------------
sub get_hostname {
  my $ip = shift;
  my $host = nslookup(host => $ip, type => "PTR");
                
  if(not $host)  { 
      open my $fh, $HOSTS_FILE or warn "Could not open $HOSTS_FILE: $!";
      my @lines = grep /$ip/, <$fh>;
      close $fh;
      chop $lines[0];
      my @line = split /\s+/, $lines[0];
      $host = $line[1];
  }
  return $host if defined $host;
  return "unknown"; 
}
