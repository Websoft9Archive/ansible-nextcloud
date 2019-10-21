# Troubleshooting

We collect the most common troubleshooting of using Nextcloud for your reference:

> Many troubleshooting is closely related to the Server, if you can confirm troubleshooting is related to Cloud Platform, please refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html)

#### Nextcloud Redirects Error

When add new language for Nextcloud, it will add redirects rules in the  `.htaccess` file of Nextcloud root directory.

Check your `.htaccess` file in your application root directory, make sure there not any cycle redirects settings

#### Database service could not be started?

Insufficient disk space, insufficient memory, and configuration file errors can make database service could not be started  

It is recommended to first check through the command.

```shell
# restart mysql service
systemctl restart mysql

# view disk space
df -lh

# view memory rate
free -lh
```

#### phpMyAdmin page access blank?

Please try another browser, such as chrome or firefox. If the phpMyAdmin can be opened normally before, and now appears to be incomplete or blank, it is recommended to clean up the browser cache, cookies and other information

#### PhpMyAdmin Timeout Errors

If you try to import a zipped database, you might see a timeout error because phpMyAdmin takes too long to execute the script.To fix this:

- Set the max_execution_time of `php.ini` to larger value
- Try to import the file again.

Remember to change the ExecTimeLimit setting back to its original value once the import process ends.

#### Website pictures loading very slowly?

Please make sure that your brandwith of Server is more than 5M

#### Apache httpd service restart error
Please make sure the vhost.conf is correct for you, and you can track and analyze log files from */var/log/httpd*
