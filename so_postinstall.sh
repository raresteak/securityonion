#!/bin/bash
sudo soup
sudo apt-get install byobu tree docker-compose
git clone https://github.com/secureworks/dalton
sudo dalton/start-dalton.sh
