#!/bin/sh  
cwd=$(pwd)
auto_update_this_dir=true
LOGFILE=startup.log
PROJECT_1_LOGFILE=reddit_comment_reader.log
PROJECT_2_LOGFILE=reddit_agree_with_you.log
PROJECT_1_DIRECTORY="../git/reddit-comment-reader"
PROJECT_2_DIRECTORY="../git/reddit-agree-with-you"

# Runs a git pull for this directory
if [ "$auto_update_this_dir" = true ] ; then
  git pull >> $LOGFILE
fi

forever stopall >> $LOGFILE

git -C $PROJECT_1_DIRECTORY pull >> $LOGFILE
git -C $PROJECT_2_DIRECTORY pull >> $LOGFILE

forever -c "node -r dotenv/config" --workingDir $PROJECT_1_DIRECTORY start $PROJECT_1_DIRECTORY/app.js -l $cwd/$PROJECT_1_LOGFILE >> $LOGFILE
# forever start $PROJECT_2_DIRECTORY -l $cwd/$PROJECT_2_LOGFILE --workingDir $PROJECT_2_DIRECTORY >> $LOGFILE

echo "Finished startup.sh" >> $LOGFILE