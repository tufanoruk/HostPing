# HostPing

Pings given IP / hostname and returns hostname / IP and delay. Used to check (reverse)DNS lookup and accesibility of the target. (Yes, all can be done via CLI ping command. This is a simple technology integration project)

Utilizes Apache, bootstrap, JS, Perl and a small C program to invoke Perl script w/ setuid.

1. Modify "httpd-hostping.conf" according to your directory structure.
2. Add "httpd-hostping.conf" to apache configuration.
3. Run apache web server.
4. Go to the hostping page.

Notes for Apache http configuration ;
- mod_cgi must be loaded
- user running apache http server should be able to access and write service directory
- check User and Group directives
