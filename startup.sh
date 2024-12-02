#!/bin/sh  
LOGILE=log.txt
PROJECT_DIRECTORY="../git/reddit-comment-reader"

npm run --prefix $PROJECT_DIRECTORY start

echo "Hello World" > log.txt