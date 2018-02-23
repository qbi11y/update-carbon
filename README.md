# update-carbon
Automatically update the Carbon toolkit.

If you haven't already, clone the Carbon Design Kit repo. When you clone the repo it will create a folder called 'carbon-design-kit'. Once you have cloned the repo<br/>

# Getting Started
Open your terminal (CMD + Space start typing 'terminal')<br/>
Grab the git repo URL from the green 'Clone' button<br/>
**Type:** cd Documents<br/>
**Type:** git clone paste-in-the-copied-url<br/>
**Type:** cd update-carbon<br/>
**Type:** pwd<br/>
Copy the path this returned<br/>
Use your favorite text editor to open the .plist file.<br/>
Locate the string tag that is looking for a path and paste the copied path in place.<br/>
Save, you may have to give your login password<br/>
Locate the path to your carbon-design-kit folder and copy that.<br/>
Use your favorite text editor to open the .sh file.<br/>
Follow instructions in file<br/>
Save<br/>
Move back to your terminal<br/>
**Type:** sudo mv com.ibm.design.checkForCarbonUpdates.plist /Library/LaunchAgents<br/>
You will have to give your login password<br/>
**Type:** launchctl load /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist<br/>
**Type:** launchctl start /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist<br/>
If you navigate back to your carbon-design-kit folder you should see a lastUpdate.txt file. Open that file and you should see the time which is pretty close to the current time. You should also see feedback from the git pull.

 
