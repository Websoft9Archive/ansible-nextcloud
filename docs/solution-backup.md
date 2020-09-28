---
sidebarDepth: 3
---

# Backup & Restore

## Why

Users with experience in Cloud Server operation and maintenance understand the necessity of backup. It's impossible for IT systems to maintain 100% stability for a long time. The truth is that any system may fail, but only the probability of failure and the degree of harm differs.

When a failure occurs, we may first turn to a professional for help, but unfortunately, some failure cannot be solved as quickly as we expected, and even it's insoluble.

Obviously, a backup is necessary when comes to a failure. The existing backup file helps to repair the failed system, which means the huge loss due to irrecoverability can be avoided.

> Remember to develop the habit of backup. It's a great and useful way to help repair and recovery.

## How

As there are four objects on the server to back up, including **operating system, environment software, database and application**. and each object may have unpredictable failures that cannot be solved as expected, we suggest to take the following two necessary backup measures:

### Automation Backup for Instance  

Automation backup for Instance is completed based on **Snapshot** or **Cloud Server Backup Service** on your Cloud Platform. A snapshot is a full, read-only copy of a disk, which backs up the data of a disk at a certain point in time and can have a key recovery. You can take a snapshot of an OS or data disk to use as a backup, or to troubleshoot instance issues.

View the following list about this kind of backup.

```
- Backup scope: All data on a disk including operating system, software environment, database and applications
- Backup effect: Very Good
- Backup frequency: Automatic backup per hour/day/week as you need
- Recovery method: One key recovery on Cloud platform
- Skill requirement: Very easy 
- Automation or Manual: Fully automated backup after setting strategy
```

Different Cloud Platform's snapshot settings slightly differ. Refer to [Cloud platform backup solution](https://support.websoft9.com/docs/faq/tech-instance.html).

### Manual backup for application  

Manual backups for applications is to achieve a minimized backup scheme by **Exporting source code and database of application**.

View the following list about this kind of backup.

```
- Backup scope: Source code and database of application
- Backup effect: Good
- Backup frequency: You can operate when you need
- Recovery method: Import
- Skill requirement: Easy 
- Automation: Manual
```
The general steps for manual backup are as follows:

1. Compress and download the entire */data/wwwroot/nextcloud* directory by SFTP 
2. Compress and download the entire */data/wwwroot/nextcloud/data* directory by SFTP 
3. Export Nextcloud's database by [phpMyAdmin](/admin-mysql.md)
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/phpmyadmin/phpmyadmin-export-websoft9.png)
4. Put source code file, data file and database file in the same folder and name it according to the date.
5. Backup is completed.

### Nextcloud online backup

This section provides Nextcloud online backup solution.

1. Log in Nextcloud console as administrator, install **[OwnBackup](https://apps.nextcloud.com/apps/ownbackup)** 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-backupapps-websoft9.png)
2. Go to【Admin】>【OwnBackup】, start backup, and you can restore it.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/nextcloud/nextcloud-backupapp002-websoft9.png)