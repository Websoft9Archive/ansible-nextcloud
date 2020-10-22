## 注意事项

1. 上传/下载文件大小(后台可设置)
1. opcache 设置
```
opcache.enable=1
opcache.enable_cli=1
opcache.interned_strings_buffer=8
opcache.max_accelerated_files=10000
opcache.memory_consumption=128
opcache.save_comments=1
opcache.revalidate_freq=1
```

3. apache vhost 需要设置 头部 Header set Referrer-Policy "no-referrer"
3. 默认内置配置文件 配置好 redis 和 默认开启SMTP的SSL/TLS
