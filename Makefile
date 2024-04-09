setup:
	poetry init

serve:
	poetry run python manage.py runserver

make-migrations:
	poetry run python manage.py makemigrations

migrate:
	poetry run python manage.py mirate

pre-commit:
	poetry run pre-commit run --all-files

test:
	poetry run pytest
