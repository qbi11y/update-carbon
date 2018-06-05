# Update [Carbon Design Kit](http://www.carbondesignsystem.com/)
Maximize your workflow by automatically updating the Carbon toolkit. No need to constantly check for and download the latest version of the Carbon Design Kit. Each time you log into your machine, as well on a regular interval, your computer will check for updates to the Carbon Design Kit. If updates are found they will automatically be downloaded to your computer. If you have loaded the Carbon Design Kit library into your sketch files you should see a notification about updates in the upper right hand corner of your Sketch file.

**Note** If you currently download the Carbon Design Kit Sketch file yourself this will not work. You will need to clone the Carbon Design Kit repo for the automation to work properly.

## Prerequistes
* Carbon Design Kit repo cloned to your local machine<br/>
* git command line tool<br/>

**Do I have git command line tool installed?**<br/>
Open your terminal, and type `git --version`. If a version is not returned you will need to install git tools.<br/>

**How to install git**<br/>
Paste the following into your terminal:<br/> `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`<br/>
**Paste the following into your terminal:** `brew update` <br/>
**Paste the following into your terminal:** `brew install git`<br/>
**Paste the following into your terminal:** `git --version`<br/>

You should now see a github version.<br/>

**How to clone the Carbon Design Kit repo**<br/>
Open your terminal (CMD + Space start typing 'terminal')<br/>
**Type:** `cd ~/Documents`<br/>
**Type:** `git clone https://github.com/carbon-design-system/carbon-design-kit.git`<br/>
It will take a few minutes to download everything so go get a cup of coffee. Once it's finished you will have the repo on your local machine. If you look in your Documents folder you will see a folder called 'carbon-design-kit'. This folder is **IMPORTANT!** It is the folder that will receive the updates whenever the program is run. It also will be the folder that Sketch will look for the Carbon Design Library. If you move this folder you will need to update the .plist file in /Library/LaunchAgents to reflect the change. But you probably don't want to do that so just leave it alone!

## Install Update Carbon
Open your terminal (CMD + Space start typing 'terminal')<br/>
**Type:** `cd ~/Documents`<br/>
**Type:** `git clone https://github.com/qbi11y/update-carbon.git`<br/>
Once the repo has been successfully cloned to your machine
**Type:** `cd update-carbon`<br/>
**Type:** `./install.sh`<br/>
You may be prompted for your password. This is the password you use to log into your machine.<br/>
This may take a minute to complete. Once complete you should see a Update Carbon Design Kit folder in your Documents folder. Open that folder and the Carbon Design Kit.sketch file you see is what you will use to load into Sketch. Do not move this folder or rename the file.

You should see a lastUpdate.txt file.<br/>
Open that file and you should see the time which is pretty close to the current time. You should also see feedback from the git pull.

If it is up to date you will see 'Already up to date'. If there is an update you will see the process of downloading taking place. 
 
