---
tags: [django]
---

reference
基本语法

[https://docs.djangoproject.com/en/1.11/ref/templates/language/](https://docs.djangoproject.com/en/1.11/ref/templates/language/)

[https://docs.djangoproject.com/en/1.11/topics/templates/](https://docs.djangoproject.com/en/1.11/topics/templates/)

settings中的模板设置

```
# DIRS defines a list of directories where the engine should look for template source files, in search order.
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, "templates")],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

```
