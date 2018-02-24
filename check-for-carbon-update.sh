#!/bin/sh

#PLEASE READ TO AVOID ERRORS
#If your folder name has a space in it, you will need to escape the space character, check example below
#Example: If your path has spaces like this, User/Documents/Carbon Design Kit 
#then you would  need to make the path look like this User/Documents/Carbon\ Design\ Kit to avoid issues

cd paste-path-to-carbon-design-kit-folder-here

#The following code will capture the date and time of the last time
#the script excuted and will give you the result.
#If you see Already up to date, it hasn't changed since the last run time.
#If you see a bunch of stuff that doesn't  make sense if you're not familiar with git, that means the library has been updated.
date > lastUpdate.txt
git pull | tee -a lastUpdate.txt