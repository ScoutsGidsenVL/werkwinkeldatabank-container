#!/usr/bin/env bash
command=$@

if [ -z "$command" ]
then
    echo "No command parameter given"
    exit 1
fi

docker exec -it scouts-wwdb-api sh -c "python manage.py $command"
