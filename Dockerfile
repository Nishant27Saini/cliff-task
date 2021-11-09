FROM centos:latest
MAINTAINER Nishant Saini <nishantsaininss@gmail.com>
RUN yum install  httpd git  -y
RUN git clone https://github.com/Nishant27Saini/cliff-task.git/  /var/www/html
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
