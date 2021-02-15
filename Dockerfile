FROM centos
RUN yum update -y
RUN yum install httpd -y
CMD /var/www/html
CMD echo "My name is sagore" >> index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
