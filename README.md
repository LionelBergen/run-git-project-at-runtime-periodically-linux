# run-git-project-at-runtime  
This guide & script will allow you to setup your linux (Debian) machine to automatically update to your latest GIT project version and run the project.    
This way you can update your project via GIT and your machine should pickup those updates the next time your reboot and/or every X duration.   




# Quick Start   
0) If running multiple programs, you should either duplicate this prosses or ensure your program has a way to run via commandline & as a background service    
0.2) If it's a Node project, you can `forever` installed globally via `npm install forever -g`.  
1) Create a crontab on your linux machine E.G `crontab -e`, put the file in the location of this directory, given the name `crontab`. I put mine in `/home/myusername/Desktop/startup/crontab`.  
2) 
