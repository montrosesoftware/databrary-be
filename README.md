# Databrary

"World only repository for research video" --Karen Adolph @ NYU

## Requirements

| Tool   | Version |
| ------ | ------- |
| Python | 3.12    |
| Poetry | 1.8.2   |
| Docker | 24.0.6  |

## Coding Standards

### pre-commit

- check-yaml
- end-of-file-fixer
- trailing-whitespace
- black
- isort
- mypy
- flake8

## Developement Environment

### setup

`make setup`

### developement server

**Dockerized**

```bash
docker-compose up # with --build on setup
# or
make up
```

**Standalone**

 `make serve`

### migrations

`make make-migrations`

`make migrate`

### test

`make test`

### pre-commit

'make pre-commit'
