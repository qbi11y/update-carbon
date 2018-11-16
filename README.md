# Update [Carbon Design Kit](http://www.carbondesignsystem.com/)

No need to constantly check for and download the latest version of the Carbon Design Kit. Each time you log into your machine, your computer will check for updates to the Carbon Design Kit. If the Sketch library is updated you will see a notification about updates in the upper right hand corner of your Sketch file.<br/>

**Note** If you currently have the Sketch libray file loaded, you will need to unload the Sketch library file before moving forward.<br>

## Prerequisites
* git command line tool<br/>

**Do I have git command line tool installed?**<br/>
Open your terminal (CMD + Space start typing 'terminal')<br/>
**Type:** `git --version`.<br/>
If you get a modal asking if you want to download Xcode developer tools, say yes and follow the installation prompts.<br/>
If a version is returned skip to 'Install Update Carbon'<br>
If a version is not returned you will need to install git tools.<br/> 

**How to install git**<br/>
**Paste the following into your terminal:**<br/> `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`<br/>Follow all prompts and wait for the terminal prompt before you continue, this could take minute or two.<br/>
**Note** Install XCode if you're prompted to do so.<br/><br/>
**Paste the following into your terminal:** `brew update` <br/>
**Paste the following into your terminal:** `brew install git`<br/>
**Paste the following into your terminal:** `git --version`<br/>

You should now see a github version.<br/>

## Step 1: Install Update Carbon
Open your terminal (CMD + Space start typing 'terminal')<br/>
**Type:** `cd ~/Documents`<br/>
**Type:** `git clone https://github.com/qbi11y/update-carbon.git`<br/>
Once the repo has been successfully cloned to your machine<br/>
**Type:** `cd update-carbon`<br/>
**Type:** `./install.sh`<br/>
You may be prompted for your password. This is the password you use to log into your machine.<br/><br/>
This may take a minute to complete. Once complete, check that the folder and file was added to documents by navigating to the Update Carbon Design Kit folder in your Documents folder and looking for the file name Carbon Design Kit.sketch. **DO NOT** move this folder or rename the file.<br><br>

## Step 2: Install Carbon Components Library
Open your Sketch application, go to the Plugin menu item, select 'Manage Plugins', select Libraries, select Add Library, your library file is located in the Update Carbon Design Kit folder in your Documents folder (unless you changed the default location)<br>
 
