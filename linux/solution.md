TASK1
 Install and configure apache/httpd
- sudo apt-get install apache2       //install Apache in ubuntu
- whereis apache2                    //shows the location of the needed file to execute Apache

![](media/apache_install.png)

TASK2
Install and configure nginx - configure it to run as reverse proxy to apache

STEP1 -
- sudo apt-get install nginx                      // to install the nginx 
- whereis nginx                                       //  to see the location of the files to execute nginx. For ex-
                                                                    configuration file,libraries etc

![](media/nginx_install.png)

STEP 2     
                                       
Change the port for the apache server to 8085 in ports.conf file

   -  sudo vi /etc/apache2/ports.conf

   -  add port number using this line in file for ex-  Listen 8085

After modifying the file restart apache using command 
 
    -sudo systemctl restart apache2
![](media/apache_port.png)

Step3
Now using Nginx as reverse proxy for apache
-  sudo vi /etc/nginx/sites-avaible/default
-  by giving the server_ip and port and at which apache2 is running by adding this line
   location /{
       proxy_pass http://localhost:8085         // proxy_pass  http://server_ip:port of the backend   
                                                                        server
         }
![](media/reverse_proxy_setup.png)

Step4
Edit index.html using
- sudo vi /var/www/html/index.html
  write Hi, I’m Devops Ninja in body of html page 
![](media/index_html.png)
After doing all of the above process restart nginx and apache
-  sudo systemctl restart nginx
-  sudo systemctl restart apache2
And open your browser and type localhost  and you can see here nginx as a reverse proxy for apache 
![](media/reverse_proxy.png)

