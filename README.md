# Databrary

## Requirements

| Tool   | Version |
| ------ | ------- |
| Python | ^3.12   |
| Poetry | ^1.8.2  |
| Docker | ?       |

## Setup

`make setup`

## Running

**Local development server:**

`make serve`

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
