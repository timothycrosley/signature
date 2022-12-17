#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run mypy --ignore-missing-imports signature/
poetry run isort --check --diff signature/ tests/
poetry run black --check signature/ tests/
poetry run flake8 signature/ tests/
poetry run safety check -i 39462 -i 40291
poetry run bandit -r signature/
