 COMIC SERVICE 
=========================
Developer Setup
-------------------------------

Follow the following steps to setup your choice of dev environment

Get started with virtual env
----------------------------

Run the following commands to get started using virtualenv

``` shell
# once - create virtual environment
virtualenv env -p python3.6

# activate it
source env/bin/activate

# install deps
pip install -m requirements.txt

# start nameko in dev mode - supports auto reload
./dev.sh
```

Important Environment Variables
-------------------------------
``` shell
- REDIS_HOST=redis
- REDIS_PORT=379
- REDIS_INDEX=11
- DB_PASSWORD=password
- DB_USER=postgres
- DB_HOST=postgres
- DB_NAME=user_service
- DB_PORT=5432
- RABBIT_PASSWORD=guest
- RABBIT_USER=guest
- RABBIT_HOST=rabbit
- RABBIT_PORT=5672
- RABBIT_MANAGEMENT_PORT=15672
- NEW_RELIC_LICENSE_KEY
- NEW_RELIC_APP_NAME
- NEW_RELIC_ENVIRONMENT
```

Migrations
----------

Generate migration from model

Import model in alembic `/migrations/env.py`

Generate Migration

``` shell
alembic revision --autogenerate -m "migration description"
```

Run Migrations - will be run automatically on restart

``` shell
alembic upgrade head