FROM python:3.8
ENV PYTHONUNBUFFERED 1

RUN mkdir /wwdb-api
WORKDIR /wwdb-api

RUN pip install poetry
RUN poetry config virtualenvs.create false

COPY api/pyproject.toml api/poetry.lock* /wwdb-api/
RUN poetry install

CMD python scouts_wwdb_api/manage.py runserver 0.0.0.0:8000

