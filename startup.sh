#!/bin/sh  
auto_update_this_dir=true
LOGFILE=startup.log
PROJECT_1_LOGFILE=reddit_comment_reader.log
PROJECT_2_LOGFILE=reddit_agree_with_you.log
PROJECT_1_DIRECTORY="../git/reddit-comment-reader"
PROJECT_2_DIRECTORY="../git/reddit-agree-with-you"

# Runs a git pull for this directory
if ["$auto_update_this_dir" = true]; then
  git pull
fi

forever stopall > $LOGFILE

git -C $PROJECT_1_DIRECTORY pull > $LOGFILE
git -C $PROJECT_2_DIRECTORY pull > $LOGFILE

forever start $PROJECT_1_DIRECTORY -l $PROJECT_1_LOGFILE > $LOGFILE
forever start $PROJECT_2_DIRECTORY -l $PROJECT_2_LOGFILE > $LOGFILE

echo "Finished startup.sh" > $LOGFILE