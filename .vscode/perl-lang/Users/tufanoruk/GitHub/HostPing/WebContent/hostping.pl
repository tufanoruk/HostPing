{"version":5,"vars":[{"line":11,"containerName":"","name":"strict","kind":2},{"kind":2,"line":12,"name":"warnings","containerName":""},{"kind":2,"line":14,"name":"CGI","containerName":""},{"containerName":"","line":15,"name":"JSON","kind":2},{"kind":2,"name":"Ping","line":16,"containerName":"Net"},{"kind":2,"name":"Nslookup","line":17,"containerName":"Net"},{"line":18,"name":"HiRes","containerName":"Time","kind":2},{"name":"LOG","line":20,"kind":12},{"kind":13,"line":23,"containerName":null,"name":"$PING_RETRY_COUNT","localvar":"my","definition":"my"},{"name":"$HOSTS_FILE","line":24,"containerName":null,"localvar":"my","definition":"my","kind":13},{"localvar":"my","definition":"my","containerName":null,"line":26,"name":"$q","kind":13},{"kind":12,"line":26,"name":"new"},{"name":"CGI","line":26,"kind":12},{"kind":13,"line":28,"containerName":null,"name":"$phost","localvar":"my","definition":"my"},{"kind":12,"name":"trim","line":28},{"line":28,"containerName":null,"name":"$q","kind":13},{"name":"param","line":28,"containerName":"main::","kind":12},{"kind":13,"localvar":"my","definition":"my","line":32,"containerName":null,"name":"$host"},{"kind":13,"line":32,"name":"$phost","containerName":null},{"kind":13,"localvar":"my","definition":"my","containerName":null,"line":33,"name":"$ret"},{"kind":13,"definition":"my","localvar":"my","name":"$duration","line":34,"containerName":null},{"kind":13,"name":"$ip","line":35,"containerName":null,"localvar":"my","definition":"my"},{"name":"$msg","line":37,"containerName":null,"definition":"my","localvar":"my","kind":13},{"name":"$isfqdn","line":39,"containerName":null,"localvar":"my","definition":"my","kind":13},{"name":"is_fqdn_valid","line":39,"kind":12},{"kind":13,"line":39,"containerName":null,"name":"$host"},{"localvar":"my","definition":"my","line":40,"name":"$isipaddr","containerName":null,"kind":13},{"line":40,"name":"is_ipaddr_valid","kind":12},{"kind":13,"name":"$host","line":40,"containerName":null},{"kind":13,"line":45,"containerName":null,"name":"$isfqdn"},{"kind":13,"line":45,"name":"%isipaddr","containerName":null},{"kind":13,"name":"%isipaddr","line":47,"containerName":null},{"line":49,"containerName":null,"name":"$ip","kind":13},{"line":49,"name":"$host","containerName":null,"kind":13},{"kind":13,"line":50,"containerName":null,"name":"$host"},{"kind":12,"line":50,"name":"get_hostname"},{"containerName":null,"line":50,"name":"$ip","kind":13},{"kind":13,"containerName":null,"line":52,"name":"$pip","definition":"my","localvar":"my"},{"kind":13,"line":53,"containerName":null,"name":"$ret"},{"name":"$duration","line":53,"containerName":null,"kind":13},{"name":"$pip","line":53,"containerName":null,"kind":13},{"kind":12,"name":"host_ping","line":53},{"line":53,"name":"$host","containerName":null,"kind":13},{"line":55,"name":"$ip","containerName":null,"kind":13},{"kind":13,"containerName":null,"line":55,"name":"$pip"},{"line":55,"name":"$pip","containerName":null,"kind":13},{"kind":13,"line":56,"name":"$ip","containerName":null},{"line":56,"name":"$phost","containerName":null,"kind":13},{"containerName":null,"line":56,"name":"$pip","kind":13},{"kind":13,"line":56,"containerName":null,"name":"$isipaddr"},{"kind":13,"name":"%ret","line":60,"containerName":null},{"line":61,"containerName":null,"name":"%msg","kind":13},{"line":63,"name":"%msg","containerName":null,"kind":13},{"containerName":null,"line":67,"name":"$msg","kind":13},{"kind":13,"name":"$result","line":69,"containerName":null,"definition":"my","localvar":"my"},{"kind":13,"name":"$ret","line":69,"containerName":null},{"name":"$json","line":71,"containerName":null,"definition":"my","localvar":"my","kind":13},{"name":"$q","line":75,"containerName":null,"kind":13},{"line":75,"name":"header","containerName":"main::","kind":12},{"containerName":null,"line":76,"name":"$json","kind":13},{"kind":12,"line":78,"name":"LOG"},{"line":81,"name":"LOG","kind":12},{"definition":"sub","range":{"end":{"character":9999,"line":107},"start":{"line":85,"character":0}},"children":[{"kind":13,"definition":"my","localvar":"my","line":86,"containerName":"host_ping","name":"$host"},{"kind":13,"line":90,"name":"$p","containerName":"host_ping","definition":"my","localvar":"my"},{"kind":12,"line":90,"containerName":"host_ping","name":"new"},{"kind":13,"line":91,"name":"$p","containerName":"host_ping"},{"line":91,"containerName":"host_ping","name":"hires","kind":12},{"kind":13,"localvar":"my","definition":"my","line":93,"containerName":"host_ping","name":"$ret"},{"line":93,"name":"$duration","containerName":"host_ping","kind":13},{"kind":13,"line":93,"name":"$ip","containerName":"host_ping"},{"kind":13,"containerName":"host_ping","line":95,"name":"$i","definition":"my","localvar":"my"},{"kind":13,"name":"$i","line":95,"containerName":"host_ping"},{"kind":13,"name":"$PING_RETRY_COUNT","line":95,"containerName":"host_ping"},{"kind":13,"line":95,"name":"$i","containerName":"host_ping"},{"line":96,"name":"$ret","containerName":"host_ping","kind":13},{"kind":13,"containerName":"host_ping","line":96,"name":"$duration"},{"kind":13,"line":96,"name":"$ip","containerName":"host_ping"},{"kind":13,"line":96,"name":"$p","containerName":"host_ping"},{"kind":12,"line":96,"name":"ping","containerName":"host_ping"},{"kind":13,"containerName":"host_ping","line":96,"name":"$host"},{"kind":13,"line":98,"containerName":"host_ping","name":"$ret"},{"kind":13,"name":"$p","line":101,"containerName":"host_ping"},{"kind":12,"line":101,"containerName":"host_ping","name":"close"},{"line":102,"name":"$duration","containerName":"host_ping","kind":13},{"kind":13,"containerName":"host_ping","line":102,"name":"$duration"},{"kind":13,"name":"$ret","line":106,"containerName":"host_ping"},{"name":"$duration","line":106,"containerName":"host_ping","kind":13},{"name":"$ip","line":106,"containerName":"host_ping","kind":13}],"name":"host_ping","line":85,"containerName":"main::","kind":12},{"name":"Net","line":90,"containerName":"Ping","kind":12},{"kind":12,"name":"is_fqdn_valid","line":112,"containerName":"main::","range":{"end":{"line":115,"character":9999},"start":{"character":0,"line":112}},"definition":"sub","children":[{"localvar":"my","definition":"my","line":113,"containerName":"is_fqdn_valid","name":"$fqdn","kind":13},{"line":114,"name":"$fqdn","containerName":"is_fqdn_valid","kind":13}]},{"kind":12,"definition":"sub","range":{"start":{"character":0,"line":120},"end":{"character":9999,"line":123}},"children":[{"definition":"my","localvar":"my","line":121,"containerName":"is_ipaddr_valid","name":"$ipaddr","kind":13},{"kind":13,"line":122,"name":"$ipaddr","containerName":"is_ipaddr_valid"}],"name":"is_ipaddr_valid","line":120,"containerName":"main::"},{"signature":{"documentation":" trim space from head and tail of the string","parameters":[{"label":"$"}],"label":"trim($)"},"containerName":"main::","name":"trim","definition":"sub","range":{"start":{"character":0,"line":129},"end":{"character":9999,"line":134}},"kind":12,"detail":"($)","line":129,"children":[{"kind":13,"line":130,"containerName":"trim","name":"$string","localvar":"my","definition":"my"},{"containerName":"trim","line":131,"name":"$string","kind":13},{"kind":13,"containerName":"trim","line":132,"name":"$string"},{"kind":13,"containerName":"trim","line":133,"name":"$string"}]},{"kind":12,"children":[{"localvar":"my","definition":"my","line":140,"containerName":"get_hostname","name":"$ip","kind":13},{"containerName":"get_hostname","line":141,"name":"$host","definition":"my","localvar":"my","kind":13},{"kind":13,"line":141,"name":"$ip","containerName":"get_hostname"},{"kind":13,"containerName":"get_hostname","line":143,"name":"$host"},{"definition":"my","localvar":"my","line":144,"name":"$fh","containerName":"get_hostname","kind":13},{"kind":13,"containerName":"get_hostname","line":144,"name":"$HOSTS_FILE"},{"localvar":"my","definition":"my","containerName":"get_hostname","line":145,"name":"@lines","kind":13},{"kind":13,"line":145,"name":"$fh","containerName":"get_hostname"},{"line":146,"name":"$fh","containerName":"get_hostname","kind":13},{"kind":13,"line":147,"name":"$lines","containerName":"get_hostname"},{"kind":13,"definition":"my","localvar":"my","line":148,"name":"@line","containerName":"get_hostname"},{"line":148,"containerName":"get_hostname","name":"$lines","kind":13},{"kind":13,"containerName":"get_hostname","line":149,"name":"$host"},{"name":"$line","line":149,"containerName":"get_hostname","kind":13},{"kind":13,"line":151,"name":"$host","containerName":"get_hostname"},{"kind":13,"line":151,"name":"$host","containerName":"get_hostname"}],"range":{"end":{"line":153,"character":9999},"start":{"character":0,"line":139}},"definition":"sub","line":139,"containerName":"main::","name":"get_hostname"},{"line":141,"name":"nslookup","kind":12},{"kind":12,"name":"host","line":141},{"kind":12,"name":"type","line":141}]}