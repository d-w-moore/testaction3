#!/bin/bash
echo "python_version=${1}" >.env
docker-compose -f docker-compose_run-tests.yml up --build
