#!/bin/bash
# upgrade.sh
# Make sure smartcash is up-to-date
# Add the following to the crontab (i.e. crontab -e)
# */120 * * * * ~/smartnode/upgrade.sh

if sudo apt list --upgradable | grep -v grep | grep smartcashd > /dev/null
then
  smartcash-cli stop && sleep 20 && sudo apt update && sudo apt install smartcashd -y && sleep 20 && smartcashd
else
  exit
fi
