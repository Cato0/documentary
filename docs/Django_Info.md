---
id: Django
title: Django
sidebar_label: Django
---

# Django

# Basic Commands

pip install django
django-admin startproject mysite

python manage.py runserver

python manage.py startapp appName

# Create App

1. python manage.py runserver
2. python manage.py startapp appName
3. At mysite.settings.py include the appName in INSTALLED_APPS
- e.g. 'appName'
4. At mysite.urls.py include in urlpatterns:
- path('appName/', include('appName.url')),
- from django.urls import path, include		# add the 'include'


# Database

- Settings.py DATABASES

## MySQL

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'django',   # Name of the Database in PhpMyAdmin
        'USER': 'root',
        'HOST': 'localhost',
        'PORT': '',
        'PASSWORD': ''
    }
}

## SQL-Lite

DATABASES = {
    'default': {
		'ENGINE': 'django.db.backends.sqlite3',
		'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),

	}
}

## Oracle

## PostgreSQL

## MariaDB


	
e.g.

	from django.db import models
	
	class Post(models.Model):	# inherit Post from django models.Model
		author = models.ForeignKey('auth.User')
		title = models.CharField(max_length = 200)# define title as a CharField with max length equals to 200
		text = models.TextField()
		created_date = models.DateTimeField(default=timezone.now)
		published_date = models.DateTimeField(blank = True, null = True)# define published_date as a DateTimeField



