#!/bin/sh  
auto_update_this_dir=true
LOGILE=startup.log
PROJECT_1_LOGILE=reddit_comment_reader.log
PROJECT_2_LOGILE=reddit_agree_with_you.log
PROJECT_1_DIRECTORY="../git/reddit-comment-reader"
PROJECT_2_DIRECTORY="../git/reddit-agree-with-you"

# Runs a git pull for this directory
if ["$auto_update_this_dir" = true]; then
  git pull
fi

forever stopall > $LOGFILE

git -C $PROJECT_1_DIRECTORY pull > $LOGILE

forever start $PROJECT_1_DIRECTORY > $PROJECT_1_LOGILE
forever start $PROJECT_2_DIRECTORY > $PROJECT_1_LOGILE

echo "Finished startup.sh" > $LOGILE