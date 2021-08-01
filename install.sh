#!/bin/bash
#For ubuntu set up not an un-attended install...yet





sudo apt install gnome-tweaks  pluma terminator flameshot gobuster


#installing metasploit via curl 

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall