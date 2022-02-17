#!/bin/bash
#For ubuntu set up not an un-attended install...yet





sudo apt install gnome-tweaks  pluma terminator flameshot gobuster nmap 


#installing metasploit via curl 

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall


#adding a directory for wordlists and the seclist
sudo mkdir /usr/share/wordlists/seclist

sudo git clone https://github.com/danielmiessler/SecLists.git /usr/share/wordlists/seclist
cd /usr/share/wordlists
sudo git clone https://github.com/3ndG4me/KaliLists.git


#optional tools from github . 
cd /opt 
sudo git clone https://github.com/stealthcopter/deepce.git
sudo git clone https://github.com/carlospolop/PEASS-ng.git
sudo cp /PEASS-ng/linPEAS/linpeas.sh .
sudo git clone https://github.com/ffuf/ffuf.git
cd ffuf ; go get ; go build
cd ..



cd ~/
