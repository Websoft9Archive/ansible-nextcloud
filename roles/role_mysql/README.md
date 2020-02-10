Ansible Role: MySQL
=========

在CentOS或者Ubuntu服务器上安装和配置MySQL 或 MariaDB 

Requirements
------------

无特殊要求,此 role 需要 root 用户权限,可以在playbook全局加入 `become: yes`,或者如下调用 role:

```
- hosts: database
  roles:
    - role: role_mysql
      become: yes
```

Role Variables
--------------

下面列出了可用变量和默认值(请参见"defaults/main.yml"):

```
# centos版本 5.5 5.6 5.7  Ubuntu支持5.7和8.0
mysql_version: 5.6       

# MySQL root 密码
mysql_root_password: 123456  

# 新建数据库
mysql_databases: []
 # - name: example 
  # encoding: utf8mb4

# 新建数据库用户
mysql_users: []
 # - name: example
  # host: localhost
  # password: password
  # priv: 'example.*:ALL'
```



Dependencies
------------

None

Example Playbook
----------------

```
- hosts: db-servers
  become: yes
  vars_files:
    - vars/main.yml
  roles:
    - { role: role_mysql }
```

`vars/main.yml` :
```
mysql_version: 5.7
mysql_root_password: 123456  

mysql_databases: 
  - name: example 
    encoding: utf8mb4

  
mysql_users: 
  - name: example
    host: localhost
    password: password
    priv: 'example.*:ALL'
```

License
-------

BSD

