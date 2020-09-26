# Parameters

The Nextcloud deployment package contains a sequence software (referred to as "components") required for Nextcloud to run. Below list the important information, such as the component name, installation directory path, configuration file path, port, version, etc.

## Path

### Nextcloud

Nextcloud installation directory: */data/wwwroot/nextcloud*  
Nextcloud configuration file: */data/wwwroot/nextcloud/config/config.php*  
 
> (Nextcloud configuration file contains database connection configuration. If you change username and password of MySQL, remember to make corresponding modification in this file.)  

### PHP

PHP configuration file: */etc/php.ini*  
PHP Modules configurations directory: */etc/php.d*

### Apache

Nextcloud on LAMP, the Web Server is Apache  

Apache vhost configuration file: */etc/httpd/conf.d/vhost.conf*    
Apache main configuration file: */etc/httpd/conf/httpd.conf*   
Apache logs file: */var/log/httpd*  
Apache module configuration file: */etc/httpd/conf.modules.d/00-base.conf*    

### Nginx

Nextcloud on LEMP, the Web Server is Nginx    

Nginx vhost configuration file: */etc/nginx/sites-available/default.conf*  
Nginx main configuration file: */etc/nginx/nginx.conf*  
Nginx logs file: */var/log/nginx/*

### MYSQL

MySQL installation directory: */usr/local/mysql*  
MySQL data directory: */data/mysql*  
MySQL configuration file: */etc/my.cnf*    
MySQL Web Management URL: *http://Internet IP/phpmyadmin*, [get credential](/stack-accounts.md)

### phpMyAdmin

phpMyAdmin installation directory: */data/apps/phpmyadmin*  
phpMyAdmin configuration file: */data/apps/phpmyadmin/config.inc.php*   
phpMyAdmin vhost configuration file: */etc/httpd/conf.d/phpMyAdmin.conf* or */etc/nginx/php.conf*  

### Redis

Redis configuration file: */etc/redis.conf*  
Redis data directory: */var/lib/redis*  
Redis logs file: */var/log/redis/redis.log*

### Docker

These tools installed on Docker for you:

#### OnlyOffice Document Server

OnlyOffice Document Server directory：*/data/apps/onlyofficedocumentserver*  
OnlyOffice Document Server docker compose file：*/data/apps/onlyofficedocumentserver/docker-compose.yml*  

####  phpMyAdmin

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml*  

## Ports

You can control (open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.

These ports should be opened for this application:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| TCP | 80 | HTTP requests for Nextcloud | Required |
| TCP | 443 | HTTP requests for Nextcloud | Optional |
| TCP | 3306 | Remote connect to MySQL | Optional |
| TCP | 9002 | OnlyOffice Document Server on Docker | Optional |
| TCP | 9090 | phpMyAdmin on Docker | Optional |

## Version

You can see the version on product pages of Marketplace. However, after being deployed to your server, the components will be updated automatically, resulting in a certain change in the version number. Therefore, run the command on the server to view the exact version number. 
 

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# PHP Version
php -v

# List Installed PHP Modules
php -m

# Apache version on Centos
httpd -v

# Apache version on Ubuntu
apache2 -v

# List Installed Apache Modules
apachectl -M

# Nginx version
nginx -v

# List Installed Nginx Modules
nginx -V

# MySQL version:
mysql -V

# Redis version
redis-server -v

# Dokcer:
docker --version
```