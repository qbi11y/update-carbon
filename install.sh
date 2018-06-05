#!/bin/sh
folder_name="Update Carbon Design Kit"
library_folder_name="Sketch Library File"
cd ~/Documents
mkdir "$folder_name"
cd "$folder_name"
mkdir "$library_folder_name"
git clone https://github.com/carbon-design-system/carbon-design-kit.git
cd carbon-design-kit/Carbon\ Design\ Kit\ -?*
cp Carbon\ Design\ Kit.sketch ../../"$library_folder_name"
cd ../../"$library_folder_name"
ls