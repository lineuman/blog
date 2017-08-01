---
tags: [django]
---

# 配置

settings.py
```
DATABASES = {
    'default': {
            'ENGINE': 'django.db.backends.mysql',
            'NAME': 'cve',
            'USER': 'root', 
            'PASSWORD': 'your_password', 
            'HOST': 'localhost',
            'PORT': '',
            }       
}

 ALLOWED_HOSTS = [ipaddress]

```

注意只有运行了python manager.py migrate之后相关的数据库才会被创建
```
MariaDB [cve]> show tables;
+----------------------------+
| Tables_in_cve              |
+----------------------------+
| auth_group                 |
| auth_group_permissions     |
| auth_permission            |
| auth_user                  |
| auth_user_groups           |
| auth_user_user_permissions |
| django_admin_log           |
| django_content_type        |
| django_migrations          |
| django_session             |
| kvm_cve                    |
| xen_cve                    |
+----------------------------+

```

查看数据表为空
```
MariaDB [cve]> select * from auth_user;
Empty set (0.00 sec)
```

创建用户python manage.py createsuperuser,之后再查看数据表
```

MariaDB [cve]> select username, id from auth_user;
+----------+----+
| username | id |
+----------+----+
| root     |  1 |
+----------+----+
1 row in set (0.00 sec)
```
