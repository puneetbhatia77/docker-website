1. Install Docker Compose: 

      sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker- compose
      
      sudo chmod +x /usr/local/bin/docker-compose
   
      docker-compose --version
   
2. Install WordPress: We’ll be using the official WordPress and MariaDB Docker images. 

         mkdir wordpress
         
         cd wordpress/
         
         sudo vi docker-compose.yml    (contents below)  

3. Install MariaDB: It is one of the most popular database servers in the world. It’s made by the original developers of MySQL. 
                 MariaDB is developed as open source software and as a relational database it provides an SQL interface for 
                 accessing data.
                 
4. Install PhpMyAdmin: It is a free software tool written in PHP, intended to handle the administration of MySQL over the Web. 

5. Create The WordPress Site: 

##############################################

#sudo vi docker-compose.yml

wordpress:

  image: wordpress
  
  links:
  
    - wordpress_db:mysql
    
  ports:
  
    - 8080:80
    

wordpress_db:

  image: mariadb
  
  environment:
  
    MYSQL_ROOT_PASSWORD: test
    

phpmyadmin:

  image: corbinu/docker-phpmyadmin
  
  links:
  
    - wordpress_db:mysql
    
  ports:
  
    - 8181:80
    
  environment:
  
    MYSQL_USERNAME: root
    
    MYSQL_ROOT_PASSWORD: test
    

#####################################################

6. Now start the application group:

    docker-compose up -d

7. Now, in the browser go to port 8080, using your public IP or host name, as shown below:

       localhost:8080           # Fill this form and click on install WordPress.
 

8. Now visit your server’s IP address again to port 8181 this time. You’ll be greeted by the phpMyAdmin login screen:

       localhost:8181

 
