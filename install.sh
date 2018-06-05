#!/bin/sh
folder_name="Update Carbon Design Kit"
script_folder_name="scripts"

#Set up required folders
mkdir ~/Documents/"$folder_name"/
mkdir ~/Documents/"$folder_name"/"$script_folder_name"

cp check-for-carbon-update.sh ~/Documents/"$folder_name"/"$script_folder_name"
username=$(whoami)
sed -i '' "s/username/$username/g" com.ibm.design.checkForCarbonUpdates.plist
sudo cp com.ibm.design.checkForCarbonUpdates.plist /Library/LaunchAgents

cd ~/Documents/"$folder_name"/
git clone https://github.com/carbon-design-system/carbon-design-kit.git
cd carbon-design-kit/Carbon\ Design\ Kit\ -?*
cp Carbon\ Design\ Kit.sketch ../../

launchctl load /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates.plist
launchctl start /Library/LaunchAgents/com.ibm.design.checkForCarbonUpdates
#cd ../../"$library_folder_name"
#ls