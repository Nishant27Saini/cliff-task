FROM centos:latest
MAINTAINER Nishant Saini <nishantsaininss@gmail.com>
RUN yum install net-tools -y && \    
    yum install httpd -y
    yum install git -y
RUN git clone https://github.com/Nishant27Saini/Dockerapp/blob/master/index.html  /var/www/html
CMD ["/usr/sbin/httpd" , "-d"]
