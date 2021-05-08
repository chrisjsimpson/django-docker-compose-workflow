#!/bin/sh
set -ex

echo "OOOOOOOOOOOOOOOOOOKKKOOKKOKOKKO"

/wait-for.sh mysql:3306 --timeout=60 -- python manage.py runserver 0.0.0.0:8000
