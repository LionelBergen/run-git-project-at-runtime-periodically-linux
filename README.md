# run-git-project-at-runtime  
This guide & script will allow you to setup your linux (Debian) machine to automatically update to your latest GIT project version and run the project.    
This way you can update your project via GIT and your machine should pickup those updates the next time your reboot and/or every X duration.   




# Quick Start   
0) If running multiple programs, you should either duplicate this prosses or ensure your program has a way to run via commandline & as a background service    
0.2) If it's a Node project, you can `forever` installed globally via `npm install forever -g`.  
1) Create a crontab on your linux machine E.G `crontab -e`, add line `@reboot path/to/project/startup.sh` at the bottom. (See example crontab).  
1.2) The above crontab didn't work for me so I also had to run `sudo nano edit /etc/crontab` and add the `@reboot` line to the end of the file.  
2) Edit start.up.sh, change the values to the variables at the top. You can remove the 2nd project if you're only using one.      
