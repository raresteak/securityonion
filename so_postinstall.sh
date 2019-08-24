#!/bin/bash
# Security Onion Post installation script
sudo soup
sudo apt-get install byobu tree docker-compose
# Installs Suricata and Snort IDS rule and pcap testing system Dalton
# Nice to have if you are writing custom snort/suricata rules and need to test prior to deploying inside Security Onion
git clone https://github.com/secureworks/dalton
sudo dalton/start-dalton.sh # takes quite a while.
sudo so-setup 
