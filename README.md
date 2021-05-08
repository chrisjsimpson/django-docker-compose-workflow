# Django Docker-compose

Quickly start a Django3 python web development environment

- Uses environment vars for settings (no hard coded secrets)

# Settings

```
cd django
cp .env.example .env  # using defaults is OK for local dev

# Yes, both.
cd ../postgres
cp .env.example .env

# Yes, both.
cd ../mysql
cp .env.example .env

cd ../elasticsearch
cp .env.example .env

cd ../
```

# Run

```
docker-compose up # wait for ~2 minutes
```
Visit http://127.0.0.1:8000

Note: Read settings.py in `django/web/web/settings.py`,
serch for `os.getenv` <-- This is how settings are being set
from the environment (see env_file in `docker-compose.yaml`).

# How to run Django manage.py
```
docker-compose exec web bash # exec into web container
python manage.py migrate # Run migrations
```

# How to add superuser admin user
```
docker-compose exec web bash # exec into web container
python manage.py createsuperuser
```


### Reset everything
```
docker-compose up --force-recreate --build
```

### Destory database
```
sudo rm -rf data/mysql/
```

## FAQ

- Why both mysql and postgres
Because the purpose is to get setup quickly whichever database is prefered.
Consider using postgres, or mariadb.
