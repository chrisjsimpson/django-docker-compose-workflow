# Django Docker-compose

Quickly start a Django3 python web development environment

- Uses environment vars for settings (no hard coded secrets)

# Settings

```
cd django
cp .env.example .env  # use defaults is OK for local dev

cd ../postgres
cp .env.example .ev # use defaults is OK for local dev

cd ../elasticsearch
cp .env.example .ev # use defaults is OK for local dev

cd ../
```

# Run

```
docker-compose up
```
Visit http://127.0.0.1:8000

Note: Read settings.py in `django/web/web/settings.py`,
serch for `os.getenv` <-- This is how settings are being set
from the environment (see env_file in `docker-compose.yaml`).


### Reset everything
```
docker-compose up --force-recreate --build
```
