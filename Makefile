# DOCKER COMMANDS for relar development environment

setup:
	poetry install
	docker-compose up --build

up:
	docker-compose up

up-rebuild:
	docker-compose up --build --force-recreate

stop:
	docker-compose stop

start:
	docker-compose start

restart:
	docker-compose restart

down:
	docker-compose down -v --rmi 'local'

shell:
	docker-compose exec databrary /bin/bash

django-shell:
	docker-compose exec databrary poetry run python manage.py shell


# local-COMMANDS for standalone project out with containers

serve:
	export DJANGO_SETTINGS_MODULE=databrary.settings.alone
	poetry run python manage.py runserver

make-migrations:
	poetry run python manage.py makemigrations

migrate:
	poetry run python manage.py mirate

# TESTS

pre-commit:
	poetry run pre-commit run --all-files

test:
	docker-compose exec databrary poetry run coverage run ./manage.py test

test-coverage:
	$(MAKE) test
	poetry run coverage report -m
