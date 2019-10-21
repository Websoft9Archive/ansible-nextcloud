# Update & Upgrade

Updates and upgrades are one of the maintenance tasks for sytem. Programs that are not upgraded for a long time, like buildings that are not maintained for a long time, will accelerate aging and gradually lose functionality until they are unavailable.

You should know the differences between the terms **Update** and **Upgrade**([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade))
- Operating system patching is **Update**, Ubuntu16.04 to Ubuntu18.04 is **Upgrade**
- MySQL5.6.25 to MySQL5.6.30 is **Update**, MySQL5.6 to MySQL5.7 is **Upgrade**

For Nextcloud maintenance, focus on the following two Update & Upgrade jobs

- Sytem update(Operating System and Running Environment) 
- Nextcloud upgrade 

## System Update

Run an update command to complete the system update:

``` shell
#For Centos&Redhat
yum update -y

#For Ubuntu&Debian
apt update && apt upgrade -y
```
> This deployment package is preconfigured with a scheduled task for automatic updates. If you want to remove the automatic update, please delete the corresponding Cron

## Nextcloud Upgrade

Nextcloud provides a very user-friendly upgrade (update) portal, which can complete the update of the main version and APP plug-in according to the update prompt of the system.

### Core Upgrade

You can upgrade Nextcloud from the web GUI

1. Log in Nextcloud console, go to【Addmin】>【Basic Settings】, click the 【Open Updater】button when have new version
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-openupdater-websoft9.png)
2. GO to Updater
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-updater-websoft9.png)
3. Check the upgrade requirement, click 【Start update】
4. The system enters the automatic upgrade process, the download and upgrade process is relatively long, please be patient

### Apps Upgrade

You can upgrade Nextcloud Apps from the web GUI

1. Log in Nextcloud console, go to 【Apps】, find the apps that need to be upgraded
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-updatelist-websoft9.png)

2. Click 【Update】 button, wait for some minutes