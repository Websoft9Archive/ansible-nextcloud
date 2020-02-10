Ansible Role: redis
=========

在CentOS或者Ubuntu服务器上安装和配置 redis

Requirements
------------

无特殊要求,此 role 需要 root 用户权限,可以在playbook全局加入 `become: yes`,或者如下调用 role:

```
- hosts: all
  roles:
    - role: role_redis
      become: yes
```

Role Variables
--------------

下面列出了可用变量和默认值(请参见"defaults/main.yml"):

```
redis_version: stable 

```
> redis_version 版本较多具体浏览[http://download.redis.io/releases/](http://download.redis.io/releases/) 查看


Dependencies
------------

None

Example Playbook
----------------

```
- hosts: all
  become: yes
  vars_files:
    - vars/main.yml
  roles:
    - role: role_redis
```

`vars/main.yml` :
```
redis_version: 4.0.14


```

License
-------

BSD

