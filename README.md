# Update [Carbon Design Kit](http://www.carbondesignsystem.com/)
Maximize your workflow by automatically updating the Carbon toolkit. No need to constantly check for and download the latest version of the Carbon Design Kit. Each time you log into your machine, as well on a regular interval, your computer will check for updates to the Carbon Design Kit. If updates are found they will automatically be downloaded to your computer. If you have loaded the Carbon Design Kit library into your sketch files you should see a notification about updates in the upper right hand corner of your Sketch file.

**Note** If you currently download the Carbon Design Kit Sketch file yourself this will not work. You will need to clone the Carbon Design Kit repo for the automation to work properly.

## Prerequistes
* git command line tool<br/>

**Do I have git command line tool installed?**<br/>
Open your terminal, and type `git --version`. If a version is not returned you will need to install git tools.<br/>

**How to install git**<br/>
Paste the following into your terminal:<br/> `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`<br/>
**Paste the following into your terminal:** `brew update` <br/>
**Paste the following into your terminal:** `brew install git`<br/>
**Paste the following into your terminal:** `git --version`<br/>

You should now see a github version.<br/>

## Install Update Carbon
Open your terminal (CMD + Space start typing 'terminal')<br/>
**Type:** `cd ~/Documents` or wherever you may keep repos<br/>
**Type:** `git clone https://github.com/qbi11y/update-carbon.git`<br/>
Once the repo has been successfully cloned to your machine<br/>
**Type:** `cd update-carbon`<br/>
**Type:** `./install.sh`<br/>
You may be prompted for your password. This is the password you use to log into your machine.<br/><br/>
This may take a minute to complete. Once complete you should see a Update Carbon Design Kit folder in your Documents folder. Open that folder and the Carbon Design Kit.sketch file you see is what you will use to load into Sketch. **DO NOT** move this folder or rename the file.<br><br>

## Install Carbon Components Library
Open your Sketch application, go to the Plugin menu item, select 'Manage Plugins', select Libraries, select Add Library, your library file is located in the Update Carbon Design Kit folder in your Documents folder (unless you changed the default location)<br>

**Note:** After the first update check, which is set to one hour, you should see a lastUpdate.txt file. If it is up to date you will see 'Already up to date'. If there is an update you will see the process of downloading taking place. 
 
