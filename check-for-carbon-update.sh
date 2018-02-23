#!/bin/sh

cd paste-your-carbon-design-kit-folder-path-here

#The following code will capture the date and time of the last time
#the script excuted and will give you the result.
#If you see Already up to date, it hasn't changed since the last run time.
#If you see a bunch of stuff that doesn't  make sense if you're not familiar with git, that means the library has been updated.
date > lastUpdate.txt
git pull | tee -a lastUpdate.txt