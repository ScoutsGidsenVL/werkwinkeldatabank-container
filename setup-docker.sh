#!/usr/bin/env bash
docker exec -it scouts-wwdb-api sh -c "poetry install"
docker exec -it scouts-wwdb-api sh -c "python scouts_wwdb_api/manage.py migrate"
