#!/usr/bin/env bash
command=$@

if [ -z "$command" ]
then
    echo "No command parameter given"
    exit 1
fi

docker exec -it scouts-wwdb-api sh -c "python scouts_wwdb_api/manage.py $command"
