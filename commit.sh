#!/bin/bash

branch=$(git symbolic-ref --short HEAD)
ticket_number=$(echo $branch | cut -d/ -f2 | cut -d/ -f1)
message="[${ticket_number}] ${1}"

echo 'committing...'
echo $message

git commit -m "${message}"
git log --pretty=oneline HEAD~10..HEAD
