# update-carbon
Automatically update the Carbon toolkit.

# Getting Started
Open your terminal (CMD + Space start typing 'terminal')<br/>
Grab the git repo URL from the green 'Clone' button<br/>
Type: cd Documents<br/>
Type: git clone paste-in-the-copied-url<br/>
Type: cd update-carbon<br/>
Type: pwd<br/>
Copy the path this returned<br/>
Use your favorite text editor to open the .plist file.<br/>
Locate the string tag that is looking for a path and paste the copied path in place.<br/>
Save, you may have to give your login password<br/>
Move back to your terminal<br/>
Type: sudo mv com.ibm.design.checkForUpdates.plist /Library/LaunchAgents<br/>
You will have to give your login password<br/>
Type: launchctl load /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist<br/>

 
