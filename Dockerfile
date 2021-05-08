From centos:latest
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/labspa.zip
WORKDIR /var/www/html
RUN unzip labspa.zip
RUN cp -rvf nolo/* .
RUN rm -rf labspa lapspa.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

