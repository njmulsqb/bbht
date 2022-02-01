#!/bin/bash
#This tool is fork of nahamsec/bbht modified by @njmulsqb

#System update and upgrade
sudo apt-get -y update
sudo apt-get -y upgrade

#Prerequisite tools and packages
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt install -y golang
sudo apt install -y snapd
sudo apt install -y awscli



#Create a tools folder in ~/
mkdir ~/tools
cd ~/tools/


echo "Installing .bashrc aliases from Recon Aliases"
git clone https://github.com/njmulsqb/Recon-Aliases
cd Recon-Aliases
cat .bashrc >> ~/.bashrc
source ~/.bashrc
cd ~/tools/
echo "Done"


#***********Subdomain Enumeration Tools***********
echo "Installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip3 install -r requirements.txt
cd ~/tools/
echo "Done"

echo "Installing Subfinder - Project Discovery"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo "Done"

echo "Installing Amass"
sudo snap install amass
echo "Done"

echo "Installing OneForAll"
git clone https://github.com/shmilylty/OneForAll.git
cd OneForAll/
python3 -m pip install -U pip setuptools wheel
pip3 install -r requirements.txt
cd ~/tools/
echo "Done"

echo "Installing Findomain"
wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
echo "Done"

echo "Installing Knock.py"
git clone https://github.com/guelfoweb/knock.git
echo "Done"

echo "Installing Crobat"
go install github.com/cgboal/sonarsearch/cmd/crobat@latest
echo "Done"

#******** JavaScript Manipulation Tools ********
echo "Installing JSParser"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install
cd ~/tools/
echo "Done"

echo "Installing LinkFinder"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
pip3 install -r requirements.txt
sudo python3 setup.py install
cd ~/tools/
echo "Done"

echo "Installing SubJS"
go install github.com/lc/subjs@latest
echo "Done"

#**************Screenshotting Tools*************

echo "Installing Aquatone"
go install github.com/michenriksen/aquatone@latest
echo "Done"


echo "Installing EyeWitness"
git clone https://github.com/FortyNorthSecurity/EyeWitness
echo "Done"

echo "Installing Chromium"
sudo snap install chromium
echo "Done"

echo "Installing WebScreenshot"
git clone https://github.com/maaaaz/webscreenshot
echo "Done"


#******** Misc Recon Tools *********
echo "Installing Gauplus"
go install github.com/bp0lr/gauplus@latest
echo "Done"

echo "Installing Gau"
go install github.com/lc/gau/v2/cmd/gau@latest
echo "Done"

#********* Fuzzing Tools ********
echo "Installing ffuf"
go install github.com/ffuf/ffuf@latest
echo "Done"


echo "Installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
echo "Done"


echo "Installing Dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
echo "Done"


echo "Installing Lazys3"
git clone https://github.com/nahamsec/lazys3.git
echo "Done"

echo "Installing Virtual Host Discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
echo "Done"


echo "Installing SQLmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
echo "Done"


echo "Installing Nmap"
sudo apt install -y nmap
echo "Done"

echo "Installing Massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo "done"

echo "Installing ASNlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/tools/asnlookup
pip3 install -r requirements.txt
cd ~/tools/
echo "done"

echo "Installing Unfurl"
go install github.com/tomnomnom/unfurl@latest
echo "Done"

echo "Installing Waybackurls"
go install github.com/tomnomnom/waybackurls@latest
echo "Done"

echo "Installing Crtndstry"
git clone https://github.com/nahamsec/crtndstry.git
echo "Done"

echo "Downloading Seclists"
cd ~/tools/
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/tools/
echo "Done"

echo "Downloading Nuclei Templates - Project Discovery"
git clone https://github.com/projectdiscovery/nuclei-templates
echo "Done"

echo "Installing Nuclei - Project Discovery"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
echo "Done"

echo "Installing HTTPx - Project Discovery"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
echo "Done"

echo "Installing PureDNS"
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo make install
cd ~/tools/
echo "Done"

echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
ls -la
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"
echo "Set up config files for subfinder in ~/.config/subfinder/config.yaml, amass in ~/.config/amass"
