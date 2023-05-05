#!/bin/bash

echo "Installing dependencies"
pipenv install
echo "Making migrations and applying them"
cd django_orm
pipenv run python manage.py makemigrations db
pipenv run python manage.py migrate
echo "Building the library"
cd ..
pipenv run python -m build
