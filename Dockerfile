FROM centos:latest
MAINTAINER Nishant Saini <nishantsaininss@gmail.com>
RUN yum install net-tools -y && \    
    yum install httpd -y
