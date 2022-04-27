#FROM httpd:2.4
FROM alpine:3.15
RUN apk add perl && \
    apk add perl-cgi && \
    apk add perl-json && \
    apk add apache2 && \
    apk add build-base
COPY . /var/www/HostPing/
COPY conf/docker-httpd.conf /etc/apache2/httpd.conf
COPY conf/docker-hostping.conf  /etc/apache2/conf.d/hostping.conf
RUN gcc -o /var/www/HostPing/WebContent/hostping.ks /var/www/HostPing/src/hostping.c && rm /var/www/HostPing/src/hostping.c
RUN apk del build-base
RUN chown root.root /var/www/HostPing/WebContent/hostping.ks  
RUN chmod 4755 /var/www/HostPing/WebContent/hostping.ks
EXPOSE 80
CMD ["httpd", "-DFOREGROUND" ]
