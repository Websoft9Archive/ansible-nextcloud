# Update & Upgrade

Updates and upgrades are one of the maintenance tasks for system. Like buildings without maintenance for a long time, programs without upgrading will age faster, lose functionality until they are unavailable.

Get to know the differences between the terms **Update** and **Upgrade** ([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade)).
- Patching operating system is **Update**, while Ubuntu16.04 to Ubuntu18.04 is **Upgrade**. 
- MySQL5.6.25 to MySQL5.6.30 is **Update**, yet MySQL5.6 to MySQL5.7 is **Upgrade**.

Maintenance for Nextcloud includes the following two tasks:

- System update (Operating System and Runtime) 
- Nextcloud upgrade 

## System Update

Run an update command to complete the system update:

``` shell
#For Centos&Redhat
yum update -y

#For Ubuntu&Debian
apt update && apt upgrade -y
```
> This deployment package is pre-configured with a scheduled task for automatic updates. If you want to remove the automatic update, please delete the corresponding Cron

## Nextcloud Upgrade

Nextcloud provides a user-friendly upgrade (update) portal. You can complete the update of the main version and APP plug-in according to the update prompt of the system.
> Before upgrade, take a necessary snapshot of the instance in case of the upgrade failed.

### Core Upgrade

Upgrades between core and APP plug-in are different. For core upgrade, take the following steps:

1. Log in Nextcloud console, go to【Admin】>【Basic Settings】, click the【Open Updater】button when there is a new version.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-openupdater-websoft9.png)

2. Go to Updater.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-updater-websoft9.png)

3. Check the upgrade requirement, then click 【Start update】

4. The system enters the automatic upgrade process. As the download and upgrade process is relatively long, please be patient.

### Apps Upgrade

Steps for APPs upgrade are as follows:

1. Log in Nextcloud console, go to 【Apps】, find the apps that need upgrade.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-updatelist-websoft9.png)

2. Click 【Update】 button, wait for some minutes.

3. Complete all updates until all apps are up to date.

> During the upgrade process, If some problem occur, for example, unable to download upgrade package, or no read and write access, please check the network connection or ensure Nextcloud directory has read and write access.