# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

Nextcloud 域名绑定操作步骤：

1. 使用 SFTP 工具登录云服务器
2. 修改 [虚拟机主机配置文件](/zh/stack-components.html#apache)，将其中的域名相关的值
   ```text
   #### Nextcloud(LAMP) bind domain #### 

     <VirtualHost *:80>
     ServerName  www.mydomain.com # 修改成您的实际域名
     DocumentRoot "/data/wwwroot/nextcloud"
     ...
     
   #### Nextcloud(LNMP) bind domain #### 

     server {
      listen 80;
      server_name nextcloud.example.com; # 修改成您的实际域名
     ...

   ```
3. 保存配置文件，[重启服务](/zh/admin-services.html#apache)

## Nextcloud 更换域名

如果 Nextcloud 需要更换域名，具体操作如下：

1. 完成新的域名解析和域名绑定
2. 修改 [Nextcloud 配置文件](/zh/stack-components.html#nextcloud)中的域名值
   ```
   'overwrite.cli.url' => 'nextcloud.yourdomain.com', # 修改为新域名
   ```
2. [重启 PHP-FPM 服务](/zh/admin-services.html#php-fpm)后生效

## Nextcloud 设置语言

登录 Nextcloud，在后台 【个人】>【个人信息】中设置语言

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-mylanguage-websoft9.png)

## Nextcloud 安装扩展

Nextcloud 后台集成了 [Marketplace](https://apps.nextcloud.com) 大量的扩展（也叫apps），下面介绍如何安装它们

1. 登录 Nextcloud，在后台 【应用】>【应用软件包】中寻找所需的应用
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-backendmk-websoft9.png)
2. 在线安装它

## Nextcloud 集成 LDAP

当企业网盘与多个人使用的时候，用户需要与内部域控集成，以保证用户可以通过Windows账号集成。

Nextcloud提供了 LDAP 集成工具，具体参考官方方案：*[User Authentication with LDAP](https://docs.nextcloud.com/server/latest/admin_manual/configuration_user/user_auth_ldap.html)*

## Nextcloud 命令行工具-OCC

OCC命令是 Nextcloud 的命令行界面。您可以使用OCC执行许多常见的服务器操作，例如安装和升级 Nextcloud，管理用户，加密，密码，LDAP设置等。

## Nextcloud 连接外部存储

Nextcloud 支持多种流行的企业存储服务，具体使用步骤如下：

1. 登录 Nextcloud 后台，安装 **External storage support** 扩展
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-enablestorage-websoft9.png)

2. 打开：【Admin】>【Add storage】>【External Storage】，选择一个外部存储服务
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-enablestorage002-websoft9.png)

3. 根据实际情况进行设置
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-auth_mechanism-websoft9.png)

更多详情参考官方文档：[External Storage](https://docs.nextcloud.com/server/latest/admin_manual/configuration_files/external_storage_configuration_gui.html)

## Nextcloud 数据转移

Nextcloud 的程序和数据文件默认均存在系统盘，你要转移到数据盘（或对象存储），步骤如下：

### 转移到数据盘

1. 在服务器所在的云平台上购买数据盘，并**挂载**到 Nextcloud 服务器
2. 使用 SFTP 工具连接服务器，停止服务
   ```
   systemctl stop httpd
   ```
3. 新建一个 */data/wwwroot/nextcloud2* 文件夹
4. 初始化数据盘，并将数据盘 **mount** 到新建的 *nextcloud2* 文件夹
5. 将 */data/wwwroot/nextcloud* 下的数据全部拷贝到 */data/wwwroot/nextcloud2*  
6. 修改 Nextcloud [虚拟主机配置文件](/zh/stack-components.html#apache) 的路径
7. 启动服务后生效
   ```
   systemctl start httpd
   ```

### 转移到对象存储

1. 在服务器所在的云平台上购买对象存储，新建一个 **bucket**
2. 使用 SFTP 工具连接服务器，停止服务
   ```
   systemctl stop httpd
   ```
3. 新建一个 */data/wwwroot/nextcloud2* 文件夹
4. 将对象存储的 bucket **mount** 到新建的 *nextcloud2* 文件夹
5. 将 */data/wwwroot/nextcloud* 下的数据全部拷贝到 */data/wwwroot/nextcloud2*  
6. 修改 Nextcloud [虚拟主机配置文件](/zh/stack-components.html#apache) 的路径
7. 启动服务后生效
   ```
   systemctl start httpd
   ```
8. 设置对象存储开机自动挂载（不同云平台操作不同）

> 以上两种数据转移方案中，**mount** 操作对新手来说是几乎是不可能独立完成的任务。另外，如果转移的数据超过10G，会存在拷贝失败的风险

## Nextcloud 文件预览与编辑

Nextcloud 自身是不能对 Office 文件进行预览或编辑的，需要集成外部的 Office 文档编辑和预览服务才可以具备这样的功能。  

Websoft9 提供的 Nextcloud 部署包内置了 OnlyOffice Document Server(Docker版) ，此软件可以用于给 Nextcloud 提供文档预览与编辑服务，具体设置步骤如下：

1. 开启服务器安全组的 8080 端口
2. 登录到 Nextcloud ，单击左上角齿轮图标，点击【应用】
	![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-olpreview-1-websoft9.png)
3. 找到【ONLYOFFICE】插件，安装它
4. 安装完成后，找到**设置**页面，对 ONLYOFFICE 进行如图所示的设置（[参考官方文档](https://api.onlyoffice.com/editors/nextcloud)）
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/nextcloud/nextcloud-setonlyoffice-websoft9.png)
   > 图中涂抹处应修改为**服务器公网IP**
5. 返回到首页，刷新或重新登录，然后单击 Office 文件即可在线预览和编辑。