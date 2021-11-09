FROM centos:latest
MAINTAINER Nishant Saini <nishantsaininss@gmail.com>
RUN yum install net-tools  httpd git -y
RUN git clone https://github.com/Nishant27Saini/Dockerapp.git/  /var/www/html
CMD ["/usr/sbin/httpd" , "-d"]
