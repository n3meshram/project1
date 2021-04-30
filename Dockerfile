From centos:latest
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/nolo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip nolo.zip
RUN cp -rvf nolo/* .
RUN rm -rf nolo nolo.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"
EXPOSE 80
