# 更新升级

网站技术日新月异，**更新升级**是维护工作之一，长时间不升级的程序，就如长时间不维护的建筑物一样，会加速老化、功能逐渐缺失直至无法使用。  

这里注意更新与升级这两词的差异（[延伸阅读](https://support.websoft9.com/docs/faq/zh/tech-upgrade.html#更新-vs-升级)），例如：  

- 操作系统打个补丁常称之为**更新**，Ubuntu16.04 变更为 Ubuntu18.04，称之为**升级**
- MySQL5.6.25-->MySQL5.6.30 常称之为**更新**，MySQL5.6->MySQL5.7 称之为**升级**

Nextcloud 完整的更新升级包括：系统级更新（操作系统和运行环境）和 Nextcloud 程序升级两种类型

## 系统级更新

运行一条更新命令，即可完成系统级更新：

``` shell
#For Centos&Redhat
yum update -y

#For Ubuntu&Debian
apt update && apt upgrade -y
```
> 本部署包已预配置一个用于自动更新的计划任务。如果希望去掉自动更新，请删除对应的Cron


## Nextcloud 升级

Nextcloud提供了非常人性化的升级入口，根据系统的更新提示既可以完成主版本、插件的更新。

> 在升级之前请做好服务器的快照备份，这个是必须的步骤，因为谁都无法保证升级100%成功。

### 主程序升级

主程序升级与插件升级略有差异，具体参考如下：

1. 登录 Nextcloud 后台，进入【管理】>【基本设置】，若有更新请点击【打开更新管理器】按钮
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-openupdater-websoft9.png)
2. 进入 Updater（更新管理器）
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-updater-websoft9.png)
3. 点击【Start update】开始更新
4. 系统进入自动化升级过程，下载和升级过程比较长，请耐心等待

> 由于升级过程会下载最新版本，Nextcloud的下载服务器在国外，若下载不成功，需要不定期尝试

### 插件升级

升级步骤参加如下：

1. 登录 Nextcloud 后台，进入【应用】，在应用列表中找到需更新的应用
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-updatelist-websoft9.png)

2. 点击【更新】按钮，耐心等待更新
3. 所有更新完成后，更新清单会显示“所有应用都是最新的”

> 如果升级过程出现问题，例如：无法下载升级包/没有读写权限，请确保网络是通的/Nextcloud目录具有读写权限