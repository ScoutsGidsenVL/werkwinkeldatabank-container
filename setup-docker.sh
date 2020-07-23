#!/usr/bin/env bash
docker exec -it hpc-resource-reservation sh -c "poetry install"
docker exec -it hpc-resource-reservation sh -c "python manage.py migrate"
