# PHP Runtime

## Guide

The environment components that support Nextcloud running include: PHP, MySQL, Apache or Nginx, etc. Please check the corresponding manuals according to different deployment packages to complete more configurations.

| Deployment package | items| docs |
| --- | --- | --- |
| Nextcloud(LAMP) | Apache+MySQL+PHP on Linux | *[LAMP administrator guide](https://support.websoft9.com/docs/lamp)* |
| Nextcloud(LEMP)| Nginx+MySQL+PHP on Linux |*[LEMP administrator guide](https://support.websoft9.com/docs/lnmp)*|

## What's PHP Runtime?

In addition to using the default settings of the Nextcloud deployment package, you may need to do more on the server:

- Modify PHP configuration file (php.ini)
- Add new Nextcloud or PHP application
- Configure the SSL/HTTPS
- Modify the root directory
- Bind Domain Name  
...

To complete these tasks, you need to refer to [Environmental Guidelines](/admin-runtime.md#guide)

In addition, you may think about how Nextcloud works in these environments? Please refer to the hierarchy diagram below.

![](https://libs.websoft9.com/Websoft9/DocsPicture/en/lamp/lamp-imagestacks-websoft9.png)