---
tags: [nginx]
---
reference

[https://www.nginx.com/resources/admin-guide/installing-nginx-open-source/](https://www.nginx.com/resources/admin-guide/installing-nginx-open-source/)

## install from source code

所需要的额外的库

yum install pcre-static

yum install zlib-static

```
cd nginx-1.10.3
./configure

显示如下
Configuration summary
  + using system PCRE library
  + OpenSSL library is not used
  + using builtin md5 code
  + sha1 library is not found
  + using system zlib library

  nginx path prefix: "/usr/local/nginx"
  nginx binary file: "/usr/local/nginx/sbin/nginx"
  nginx modules path: "/usr/local/nginx/modules"
  nginx configuration prefix: "/usr/local/nginx/conf"
  nginx configuration file: "/usr/local/nginx/conf/nginx.conf"
  nginx pid file: "/usr/local/nginx/logs/nginx.pid"
  nginx error log file: "/usr/local/nginx/logs/error.log"
  nginx http access log file: "/usr/local/nginx/logs/access.log"
  nginx http client request body temporary files: "client_body_temp"
  nginx http proxy temporary files: "proxy_temp"
  nginx http fastcgi temporary files: "fastcgi_temp"
  nginx http uwsgi temporary files: "uwsgi_temp"
  nginx http scgi temporary files: "scgi_temp"


make
make install
```

配置服务

[https://www.nginx.com/resources/wiki/start/topics/examples/systemd/](https://www.nginx.com/resources/wiki/start/topics/examples/systemd/)

solve 403 Forbidden

