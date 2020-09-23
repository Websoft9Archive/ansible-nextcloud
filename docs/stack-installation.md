# Initial Installation

If you have completed the Nextcloud deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the **TCP:80** and **TCP:9002** is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Nextcloud

## Nextcloud Installation Wizard

1. Using local Chrome or Firefox to visit the URL *https://domain* or *https://Internet IP*, start to install  

2. You need to set administrator account, then set 【Storage&Database】, suggest select 【MySQL】

3. Configure the MySQL database connection([Don't know password?](/stack-accounts.html#mysql)) 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-intall-websoft9.png)
   
4. Click 【Flish Setup】, it has been installed successfully.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-intallss-websoft9.png)

5. Nextcloud Console
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-backend-websoft9.png)

6. Go to Marketplace, get more extensions  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-app-websoft9.png)

7. Visit URL *https://Internet IP:9002* to check **OnlyOffice Document Server** been installed
   ![](http://libs-websoft9-com.oss-cn-qingdao.aliyuncs.com/Websoft9/DocsPicture/zh/onlyoffice/onlyoffice-documentserver-websoft9.png)

8. Complete [Nextcloud preview and edit](/solution-more.md#nextcloud-preview-and-edit) settings (Optional)

> Refer to [Nextcloud admin_manual](https://docs.nextcloud.com/server/latest/admin_manual/) to get more details

## Q&A

#### I can't visit the start page of Nextcloud?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Which database does this Nextcloud package use?

MySQL

#### Can I use Cloud database for Nextcloud?

Yes

#### Can I use Object storage for Nextcloud?

Yes, but the configuration is very sufficient
