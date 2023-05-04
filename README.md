# Standalone Django ORM
This project's aim is to allow developers to effectively use the [Django](https://www.djangoproject.com/) ORM outside of a Django project.  
Through this, you can handle migrations and models just as you would while developing a Django web app.
## How to use 
First, go to django_orm/manage.py and setup the database informations (a default db.sqlite3 db is included for test purposes)  
Then go to django_orm/db/models.py and add your models.  
Run the setup.sh script to make and apply migrations and build the module that you'll import in your project to use.  
You're done!