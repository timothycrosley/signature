#!/bin/bash
set -euxo pipefail

poetry run isort signature/ tests/
poetry run black signature/ tests/
