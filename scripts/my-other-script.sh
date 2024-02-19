#!/bin/bash
DIR=$(dirname "$0")
echo "My user is: " "$(id -un) [$(id -u)]"
rm -fr .env
echo "python_version=${1}" >>.env
echo "repo_mount_dir=$(realpath "$DIR/repo")" >>.env
docker-compose -f docker-compose_run-tests.yml up --build -d
