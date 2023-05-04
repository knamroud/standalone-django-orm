#!/bin/bash

echo "Installing dependencies and switching to pipenv"
pipenv install
echo "Making migrations and applying them"
cd django_orm
pipenv run python manage.py makemigrations db
pipenv run python manage.py migrate
echo "Building the library"
cd ..
pipenv python -m build