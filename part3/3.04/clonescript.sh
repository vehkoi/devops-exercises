#!/bin/bash

repository=$1
docker=$2

#remove github_username/ -> used so cd to folder is possible
folder_name=$(basename "$repository")

git clone "https://github.com/$repository"

cd "$folder_name"

docker login

docker build . -t "$docker"
docker push "$docker"
