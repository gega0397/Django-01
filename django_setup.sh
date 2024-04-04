#!/bin/bash

python3 -m venv venv

source venv/bin/activate

pip install -r requirements.txt

django-admin startproject myproject

cd myproject

python manage.py migrate

echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@example.com', 'admin')" | python manage.py shell

python manage.py runserver