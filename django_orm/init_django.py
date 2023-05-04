def init():
    import django
    from django.conf import settings
    if settings.configured:
        return
    settings.configure(
        INSTALLED_APPS=[
            "db" if __name__ == "__main__" else "django_orm.db",
        ],
        DATABASES={
            "default": {
                "ENGINE": "django.db.backends.sqlite3",
                "NAME": "db.sqlite3",
            }
        }
    )
    django.setup()

