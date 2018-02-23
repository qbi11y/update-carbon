# Update Carbon
Maximize your workflow by automatically updating the Carbon toolkit. Each time you log into your machine, the script will check for updates to the Carbon Design Kit. If updates are found they will automatically be downloaded to your machine. 

## Prerequistes
* Carbon Design Kit repo cloned to your local machine<br/>
* git command line tool<br/>

**Do I have git command line tool installed?**<br/>
Open your terminal, and type `git --version`. If a version is not returned you will need to install git tools.<br/>

**Note** If you currently download the Carbon Design Kit Sketch file yourself this will not work. You will need to clone the Carbon Design Kit repo.

**How to install git**<br/>
Paste the following into your terminal:<br/> `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`<br/>
**Paste the following into your terminal:** `brew update` <br/>
**Paste the following into your terminal:** `brew install git`<br/>
**Paste the following into your terminal:** `git --version`<br/>

You should now see a github version.<br/>

**How to clone the Carbon Design Kit repo**<br/>
Open your terminal<br/>
**Type:** `cd ~/Documents`<br/>
**Type:** `git clone https://github.com/carbon-design-system/carbon-design-kit.git`<br/>
It will take a few minutes to download everything so go get a cup of coffee. Once it's finished you will have the repo on your local machine. If you look in your Documents folder you will see a folder called 'carbon-design-kit'. This folder is **IMPORTANT!** It is the folder that will receive the updates whenever the program is run. It also will be the folder that Sketch will look for the Carbon Design Library. If you move this folder you will need to update the .plist file in /Library/LaunchAgents to reflect the change. But you probably don't want to do that so just leave it alone!

## Install Update Carbon
Open your terminal (CMD + Space start typing 'terminal')<br/>
Copy the git repo URL from the green 'Clone' button<br/>
**Type:** `cd ~/Documents`<br/>
**Type:** `git clone paste-in-the-copied-url`<br/>
**Type:** `cd update-carbon`<br/>
**Type:** `ls`<br/>
You should see the contents of the folder listed: check-for-carbon-update.sh and com.ibm.design.checkForCarbonUpdates.plist<br/>
**Type:** `pwd`<br/>
Copy the path that is returned, should be right above the prompt<br/>
Using the Finder, navigate to the update-carbon folder and open the com.ibm.design.checkForCarbonUpdates.plist file using a text editor of your choice.<br/>
Look for 'paste-your-path-here' and paste the path over the phrase. Make sure you do not paste over the check-for-carbon-update.sh filename.<br/>
Go back to your terminal<br/>
If you have followed these instructions, **Type:** `cd ~/Documents/update-carbon` - If you have not followed these instructions locate the path to your update-carbon folder.<br/>
**Type:** `pwd`<br/>
Copy the path that is returned, should be right above the prompt<br/>
Using the Finder, navigate to the update-carbon folder and open the check-for-carbon-update.sh file using a text editor of your choice.<br/>
Paste the copied path into the appropriate place in the file.<br/>
Save the file.<br/>
Move back to your terminal<br/>
**Type:** `sudo mv com.ibm.design.checkForCarbonUpdates.plist /Library/LaunchAgents`<br/>
You will have to give your login password<br/>
**Type:** `ls`<br/>
You should only see the check-for-carbon-updates.sh file<br/>
**Type:** `launchctl load /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist`<br/>
**Type:** `launchctl start /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist`<br/>

If you navigate back to your carbon-design-kit folder you should see a lastUpdate.txt file.<br/>
Open that file and you should see the time which is pretty close to the current time. You should also see feedback from the git pull.


## Manually run the script
There may be times when you want to check for the Carbon Design Kit update without having to log and log in. In those instances simply open your terminal and navigate to the update-carbon folder.<br/>
**Type:** `./check-for-carbon-update.sh`<br/>

If it is up to date you will see 'Already up to date'. If there is an update you will see the process of downloading taking place. 
 
