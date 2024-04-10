FROM python:3.12-slim
RUN apt-get update -qq && apt-get install -y -qq

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY poetry.lock pyproject.toml entrypoint.sh /app/
RUN chmod +x /app/entrypoint.sh
RUN pip install poetry && poetry config virtualenvs.create false && poetry install --no-dev

COPY . /app/

CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]
