# Troubleshooting

If you're having trouble with running Nextcloud, here is a quick guide to solve most common problems.

> Most faults about the Instance is closely related to the Instance provider, Cloud Platform. Provided you're sure the fault is caused by Cloud Platform, refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html).

#### Nextcloud Redirects Error?

Check your `.htaccess` file in your application root directory, make sure there is no any cycle redirects settings

#### After the domain configuration, find page layout confusion or the picture cannot be displayed?

This problem occurs if you install through IP, and then bind the domain name. To solve it, please change the IP address to the domain name in Nextcloud [Confuguration file](/stack-components.html#nextcloud).

#### When install plug-in, is there an error "you don't have permission to access /admin/index.php"?

Change DOSPageCount 2 into DOSPageCount 12 in /etc/httpd/conf.d/mod_evasive.conf

#### Can't connect database after change the password of database?

This problem occurs if you complete Nextcloud installation wizard, then change the password of database by phpMyAdmin. To solve it, please change the password of corresponding database in Nextcloud [Confuguration file](/stack-components.html#nextcloud).

#### Can't start Apache httpd service?

Please locate the reason by analyzing the log file: */var/log/httpd*

#### Can't start the database service?

Insufficient disk space and memory, incorrect configuration file may cause the failure to start the service.

It is recommended to first check through the command.

```shell
# view disk space
df -lh

# view memory rate
free -lh
```


