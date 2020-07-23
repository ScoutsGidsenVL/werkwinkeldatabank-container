# Hpc resource reservation docker setup

## Git
For this project we dont use git submodules like in some others but instead you can get all required sub repositories by running the following script
<pre>
./init-project.sh
</pre>

This only needs to be called the first time you pull this repo.

## Requirements
- docker (>= 17.0) and docker-compose (>= 1.17)

- make sure the auth credentials are configured for reaching our nexus.
  Auth should be the basic auth value of your ldap credentials
 <pre>
 $ cat ~/.docker/config.json
  {
    "auths": {
      "nexus.inuits.io:5000": {
        "auth": "xxx"
      }
    }
  }
  </pre>


## Initial setup
Run the start script, keep this terminal open, you will see the logs from all containers.
You can press ctrl-c to stop the containers. Or run the ./stop-docker.sh script in another terminal.

<pre>
./start-docker.sh
</pre>
Then run the setup script to execute some commands to keep api up to date (poetry install, run migrations, ...).
<pre>
./setup-docker.sh
</pre>

## Ports
- Hpc resource reservation: localhost:8011
- Mailcatcher: localhost:8020

## Hpc resource reservation

### Poetry
This django project uses poetry for it's package management. See https://python-poetry.org/
Default poetry works with virtualenvs but because we use docker here this is not necessary and turned off.
This does mean that you should never use your own local poetry for executing commands.
Poetry will always need to be called either in the docker container or with the provided script command.

Here is an example of a poetry install:
<pre>
./commands/poetry.sh install
</pre>

### Django
Just like Poetry Django manage commands should be executed in container or with provided script:

Here is an example of a makemigrations command:
<pre>
./commands/django-manage.sh makemigrations
</pre>
