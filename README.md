# Databrary

"World only repository for research video" --Karen Adolph @  NYU

## Requirements

| Tool   | Version |
| ------ | ------- |
| Python | 3.12    |
| Poetry | 1.8.2   |
| Docker | 24.0.6  |

## Setup

`make setup`

## Running

**Dockerized development server:**

```bash
docker-compose up # with --build on setup
```

**Local development server:**

```bash
export DJANGO_SETTINGS_MODULE=databrary.settings.local
make serve
```

### migrations

`make make-migrations`
`make migrate`

### tests

`make test`

### pre-commit

`make pre-commit`

Implemented:

- check-yaml
- end-of-file-fixer
- trailing-whitespace
- black
- isort
- mypy
- flake8
