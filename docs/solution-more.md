# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for **Domain binding** is have completed the **Domain resolution** for Nextcloud Instance.

From the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Nextcloud domain name binding steps:

1. Connect your Cloud Server
2. Modify [vhost configuration file](/stack-components.md#apache), change the domain name item for you
   ```text
   #### Nextcloud (LAMP) bind domain #### 

     <VirtualHost *:80>
     ServerName nextcloud.mydomain.com # modify it for you
     DocumentRoot "/data/wwwroot/Nextcloud"
     ...
     
   #### Nextcloud (LEMP) bind domain #### 

     server {
      listen 80;
      server_name    nextcloud.example.com; # modify it for you
     ...

   ```
3. Save it and restart [Web Service](/admin-services.md#apache)


## Nextcloud change domain

You can change the domain of Nextcloud by the following steps:

1. Complete the new **Domain resolution and Domain binding**
2. Modify [Nextcloud configuration file](/stack-components.html#nextcloud)
   ```
   'overwrite.cli.url' => 'nextcloud.yourdomain.com', # Set it to your new domain
   ```
3. [Restart PHP-FPM service](/admin-services.html#php-fpm)

## Nextcloud language

Log in nextcloud, go to【Personal】>【Personal Info】 and set your language

![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-mylanguage-websoft9.png)

## Nextcloud install apps

Nextcloud integrated [Marketplace](https://marketplace.nextcloud.com/) that have lots of extensions(apps), the following is the step for installing apps

1. Log in Nextcloud, go to【Apps】>【App bundles】, search the apps you want to use
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-backendmk-websoft9.png)
2. Instal it online

## Nextcloud LDAP

Refer to *[User Authentication with LDAP](https://docs.nextcloud.com/server/latest/admin_manual/configuration_user/user_auth_ldap.html)*

## Nextcloud CLI-OCC

Nextcloud's occ command (Nextcloud console) is Nextcloud's command-line interface. You can perform many common server operations with occ, such as installing and upgrading Nextcloud, manage users, encryption, passwords, LDAP setting, and more.

## Nextcloud external storage

The External Storage Support application enables you to mount external storage services and devices as secondary Nextcloud storage devices. You may also allow users to mount their own external storage services.

1. Log in Nextcloud console, enable **External storage support** application
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-enablestorage-websoft9.png)

2. Open【Admin】>【External Storage】, select an external storage service
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-enablestorage002-websoft9.png)

3. Set it
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-auth_mechanism-websoft9.png)

More details please refer to [External Storage](https://docs.nextcloud.com/server/latest/admin_manual/configuration_files/external_storage_configuration_gui.html)

## Nextcloud transfer

Nextcloud source code and data is in system disk by default, you can transfer them to data disk or  Object storage:

### to data disk

1. Purchase a data disk from Cloud Platform, then **attach** it to Nextcloud Server
2. Use SFTP tool to connect Server and stop service
   ```
   systemctl stop httpd
   ```
3. Create a new folder */data/wwwroot/nextcloud2* 
4. Initialize data disk, and **mount** it to *nextcloud2* folder
5. Copy all files in */data/wwwroot/nextcloud* to */data/wwwroot/nextcloud2*  
6. Modify the Nextcloud directory in  [vhost configuration file](/zh/stack-components.html#apache) 
7. Start the service
   ```
   systemctl start httpd
   ```

### to Object storage

1. Purchase Object storage from Cloud Platform, then create a new **bucket**
2. Use SFTP tool to connect Server and stop service
   ```
   systemctl stop httpd
   ```
3. Create a new folder */data/wwwroot/nextcloud2* 
4. Then **mount** it to *nextcloud2* folder
5. Copy all files in */data/wwwroot/nextcloud* to */data/wwwroot/nextcloud2*  
6. Modify the Nextcloud directory in  [vhost configuration file](/zh/stack-components.html#apache) 
7. Start the service
   ```
   systemctl start httpd
   ```
8. Set the object storage to boot automatically (different cloud platform operations)

> The **mount** command is very difficult for user, and there is a risk of copy failure if the data is exceed 10G

## Nextcloud preview and edit

Nextcloud can't preview and edit Office document itself, you need to integrate document Server service for Nextcloud to implement this function:

1. Enable the **TCP:9002** port on **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)**
2. Log in to Nextcloud console, go to 【Apps】page
	 ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-olpreview-1-websoft9.png)
3. Find the app【ONLYOFFICE】 and install it
4. Set the 【ONLYOFFICE】
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-setonlyoffice-websoft9.png)
   > The smear in the figure should be modified to **Internet IP**
5. Refresh the Nextcloud, test the preview and edit function of documentation
