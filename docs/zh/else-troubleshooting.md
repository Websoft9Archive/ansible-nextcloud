# 故障处理

此处收集使用 Nextcloud 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### Nextcloud 重定向错误？

多语言下，重定向错误比较常见。例如：打开您的Nextcloud商店中文版会出现重定向

处理办法：
1. 分析网站根目录下的 `.htaccess` 文件，看看有没有死循环规则
2. 进入后台先删除中文，然后再重新导入中文。重新导入的时候，Nextcloud会自动生成伪静态规则，覆盖您网站根目录的 `.htaccess` 文件

####  域名配置后，会出现“页面布局混乱或图片无法显示”？

如果先通过 IP 安装，再绑定域名，就会出现这个问题，请分别打开 Nextcloud 的[配置文件](/zh/stack-components.html#nextcloud)，将其中的IP地址改成域名。

#### 安装插件，显示403权限不足，错误"you dont have permession to access /admin/index.php"

修改文件：/etc/httpd/conf.d/mod\_evasive.conf 中  DOSPageCount 2 改为 DOSPageCount 12

#### 修改了数据库密码 Nextcloud 不能访问？

若已完成 Nextcloud 安装向导，再通过 phpMyAdmin 修改数据库密码，Nextcloud 就会连不上数据库  

需要修改 [Nextcloud 配置文件](/zh/stack-components.html#nextcloud) 对应的数据库 password 参数即可。

#### Apache httpd 服务无法启动？

请通过分析日志文件定位原因： */var/log/httpd*

#### 数据库服务无法启动

数据库服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh
```

