Notes: 
Ensure git is installed
Where to set the folder up
talk about running it manually
# Update Carbon
Maximize your workflow by automatically updateing the Carbon toolkit. Each time you log into your machine, the script will check for updates to the Carbon Design Kit. If updates are found they will automatically be downloaded to your machine. 

# Prerequistes
*Carbon Design Kit repo cloned to your local machine*<br/>
*git command line tools*<br/>

**Do I have get installed?**<br/>
Open your terminal, and type `git --version`. If a version is not returned you will need to install git tools.<br/>


In order for this work on your machine you will need to have the Carbon Design Kit repo cloned to your local machine. If you currently download the file yourself this will not work. If you haven't worked with git hub before you will need to install the git command line tools. Check to see if you have git hub already installed by opening your terminal window and typing 'git --version' at the command prompt. If you have git installed you will get a version number back. If not you will get an error.

**How to install git**<br/>
Paste the following into your terminal:<br/> `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`<br/>
Paste the following into your terminal: `brew update` <br/>
Paste the following into your terminal: `brew install git`<br/>
Paste the following into your terminal: `git --version`<br/>

You should now see a github version.<br/>

If you haven't already, clone the Carbon Design Kit repo (https://github.com/carbon-design-system/carbon-design-kit). When you clone the repo it will create a folder called 'carbon-design-kit'. Once you have cloned the repo you can begin the process.<br/>

# Getting Started
Open your terminal (CMD + Space start typing 'terminal')<br/>
Grab the git repo URL from the green 'Clone' button<br/>
**Type:** `cd Documents`<br/>
**Type:** `git clone paste-in-the-copied-url`<br/>
**Type:** `cd update-carbon`<br/>
**Type:** `pwd`<br/>
List out the screen
Copy the path that is returned<br/>
Open the .plist file us a text editor or your choice.<br/>
Look for 'paste-your-path-here' and paste the path over it.
Locate the string tag that is looking for a path and paste the copied path in place.<br/>
Locate the path to your carbon-design-kit folder and copy that.<br/>
Use your favorite text editor to open the .sh file.<br/>
Follow instructions in file. Separate text out, use example<br/>
Save<br/>
Move back to your terminal<br/>
**Type:** `sudo mv com.ibm.design.checkForCarbonUpdates.plist /Library/LaunchAgents`<br/>
You will have to give your login password<br/>
List out files to note the missing file
**Type:** `launchctl load /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist`<br/>
**Type:** `launchctl start /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist`<br/>
If you navigate back to your carbon-design-kit folder you should see a lastUpdate.txt file. Open that file and you should see the time which is pretty close to the current time. You should also see feedback from the git pull.

 
