#!/bin/sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo  "         COMIC_SERVICE SERVICE v1         "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# echo "Checking if rabbitmq server is up!"

# while ! nc -z "${RABBIT_HOST:localhost}" 5672; do sleep 3; done
# echo "RabbitMQ server: ✓"
# echo "Checking if database server is up!"
# while ! nc -z "${DB_HOST:localhost}" 5432; do sleep 3; done
# echo "Database server: ✓"

# Run Migrations
export PYTHONPATH=.
alembic upgrade head

# Run Service
nameko run --config config.yml app.service:HTTPComicService app.service:ComicService --backdoor 3000
