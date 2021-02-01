FROM centos
RUN yum update -y
RUN yum install httpd -y
CMD /var/www/html
CMD echo "this is a sample webpage" >> index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
