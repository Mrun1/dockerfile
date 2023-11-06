FROM centos:7


MAINTAINER Mrunmayee Kulkarni


RUN yum install httpd -y && yum install git -y

RUN sed -ie '119c DocumentRoot "/var/www/html/webgames"' /etc/httpd/conf/httpd.conf && sed -ie '124c <Directory "/var/www/html/">' /etc/httpd/conf/httpd.conf && sed -ie '131c <Directory "/var/www/html/webgames">' /etc/httpd/conf/httpd.conf

WORKDIR /var/www/html


RUN git clone https://github.com/Mrun1/Webgames.git


CMD apachectl -DFOREGROUND
