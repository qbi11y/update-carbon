#!/bin/sh

cd /Users/thompsoj/Documents/IBM\ Cloud/carbon-design-kit
date > lastUpdate.txt
git pull | tee -a lastUpdate.txt