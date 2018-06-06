#!/bin/sh
#setup variables
folder_name="Update Carbon Design Kit"
script_folder_name="scripts"
success="\033[032m" #green
failure="\033[031m" #red
warning="\033[093m" #yellow
info="\033[034m"    #blue
default="\033[039m" #white
bold="\033[1m"      #bold
normal="\033[0m"    #normal

#Set up required folders

if [ ! -d ~/Documents/"$folder_name"/ ]; then
	mkdir ~/Documents/"$folder_name"/
	echo "$success~/Documents/$folder_name/ successfully created!$default"
else
	echo "~/Documents/$folder_name/ already exists"
fi

if [ ! -d ~/Documents/"$folder_name"/"$script_folder_name"/ ]; then
	mkdir ~/Documents/"$folder_name"/"$script_folder_name"
	echo "$success~/Documents/$folder_name/$script_folder_name successfully created!$default"
else
	echo "~/Documents/$folder_name/$script_folder_name already exists"
fi

#copy the checking script
cp check-for-carbon-update.sh ~/Documents/"$folder_name"/"$script_folder_name"

if cp check-for-carbon-update.sh ~/Documents/"$folder_name"/"$script_folder_name" 
	then
	echo "$success Successfully copied check-for-carbon-update.sh$default"
else
	echo "$failure Failure exit status $?$default"
fi

#capture the current username
username=$(whoami)

#update the .plist file with the correct username
if sed -i '' "s/username/$username/g" com.ibm.design.checkForCarbonUpdates.plist
	then
	echo "$success Property list file updated$default"
else
	echo "Oh shit $?"
fi

#move the .plist file to /Library/LaunchAgents directory
sudo cp com.ibm.design.checkForCarbonUpdates.plist /Library/LaunchAgents

cd ~/Documents/"$folder_name"/
#clone the carbon-design-kit repo
echo "$warning Downloading Carbon Design Kit repo. This could take a while$default"
if git clone https://github.com/carbon-design-system/carbon-design-kit.git
	then
	echo "$success Carbon Design Kit Successfully downloaded"
else
	echo "Oh shit $?"
fi

cd carbon-design-kit/Carbon\ Design\ Kit\ -?*
#copy the sketch file to a higher directory for easy access
if cp Carbon\ Design\ Kit.sketch ../../
	then
	echo "$success Carbon Design Kit library file successfully moved$default"
else
	echo "Oh shit $?"
fi

if launchctl load /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist
	then
	echo "successful load"
else
	echo "Oh shit could not load $?"
fi

launchctl start /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist
echo "$success .plist file successfully loaded"
echo "Installation is complete!$default"

#Next steps for the user to load the file into Sketch 
echo "$bold NEXT STEPS$normal"
echo "$info Load The Sketch Library File$normal"
echo "Open your Sketch application, go to the Plugin menu item, select 'Manage Plugins', select Libraries, select Add Library, your library
file is located at /Users/$username/Documents/$folder_name.$default"