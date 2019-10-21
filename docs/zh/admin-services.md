# 服务启停

使用由Websoft9提供的 Nextcloud 部署方案，可能需要用到的服务如下：

### Apache

```shell
#For Centos&Redhat
sudo systemctl start httpd
sudo systemctl stop httpd
sudo systemctl restart httpd
sudo systemctl status httpd

#For Ubuntu&Debian
sudo systemctl start apache2
sudo systemctl stop apache2
sudo systemctl restart apache2
sudo systemctl status apache2
```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

### PHP-FPM
```shell
systemctl start php-fpm
systemctl stop php-fpm
systemctl restart php-fpm
systemctl status php-fpm
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### Redis
```shell
sudo systemctl start redis
sudo systemctl stop redis
sudo systemctl restart redis
sudo systemctl status redis
```

### Docker
```shell
sudo systemctl start docker
sudo systemctl stop redis
sudo systemctl restart redis
sudo systemctl status redis
```