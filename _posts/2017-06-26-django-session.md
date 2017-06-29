---
tags: [django]
---

# django-session
[https://docs.djangoproject.com/en/1.11/topics/http/sessions/](https://docs.djangoproject.com/en/1.11/topics/http/sessions/)

会话机制

Django的会话也是通过中间件形成的。

session的实现方式有多种
##　Enabling sessions

**MIDDLEWARE**

`django.contrib.sessions.middleware.SessionMiddleware`

---

## Configuring the session engine

**SESSION_ENGINE**

### 基于数据库的会话机制

### 基于缓存的会话机制

### 基于文件的会话机制

### 基于cookie的会话

---
## Using sessions in views
