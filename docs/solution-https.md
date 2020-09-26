# SSL/HTTPS

Before setting, you have to complete binding domain and make sure you can access by HTTP.

Nextcloud deployment package has installed the SSL module of Nginx and open Certificate Authority **[Let's Encrypt](https://letsencrypt.org/)** for you to configure the HTTPS quickly.

> Except for the vhost configuration file, HTTPS settings do not need to modify any other files in Nginx.

## Quick configuration

If you want to use a free certificate, just run the one command `certbot` on your instance to start the HTTPS deployment.
```
sudo certbot
```

If you have applied for a commercial certificate, complete the HTTPS configuration in just three steps:
### For Nextcloud (LAMP)

LAMP means that **Apache** for Web Server

1. Upload your certificate to the directory of your instance: */data/cert* 
2. Open the vhost configuration file: */etc/httpd/conf.d/vhost.conf* 
3. Insert the **HTTPS template**  segment `<VirtualHost *:443>--</VirtualHost>` into `vhost.conf`
   ``` text
   #-----HTTPS template start------------
   <VirtualHost *:443>
    ServerName  nextcloud.yourdomain.com
    DocumentRoot "/data/wwwroot/nextcloud"
    #ErrorLog "logs/nextcloud.yourdomain.com-error_log"
    #CustomLog "logs/nextcloud.yourdomain.com-access_log" common
    <Directory "/data/wwwroot/nextcloud">
    Options Indexes FollowSymlinks
    AllowOverride All
    Require all granted
    </Directory>
    SSLEngine on
    SSLCertificateFile  /data/cert/nextcloud.yourdomain.com.crt
    SSLCertificateKeyFile  /data/cert/nextcloud.yourdomain.com.key
    </VirtualHost>
   #-----HTTPS template end------------
   ```
4. Modify ServerName, SSLCertificateFile, SSLCertificateKeyFile
5. Save it and [Restart Apache service](/admin-services.md#apache)

### For Nextcloud (LEMP)

LEMP means that **Nginx** for Web Server

1. Upload your certificate to the directory of your instance: */data/cert* 
2. Edit the vhost configuration file: */etc/nginx/conf.d/default.conf* 
3. Insert the **HTTPS template** into Nextcloud's *server{ }* already existing
   ``` text
   #-----HTTPS template start------------
   listen 443 ssl; 
   ssl_certificate /data/cert/xxx.crt;
   ssl_certificate_key /data/cert/xxx.key;
   ssl_session_timeout 5m;
   ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
   ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:HIGH:!aNULL:!MD5:!RC4:!DHE;
   ssl_prefer_server_ciphers on;
   #-----HTTPS template end------------
   ```
4. Modify ssl_certificate, ssl_certificate_key
5. Save it and [Restart Nginx service](/admin-services.md#nginx)

## Special Guide

If failed to set HTTPS by taking the above steps, please refer to the [HTTPS Special Guide](https://support.websoft9.com/docs/faq/tech-https.html#nginx) provided by Websoft9 for details on configuring HTTPS pre-conditions, HTTPS configuration segment templates, precautions, detailed steps, and troubleshooting.