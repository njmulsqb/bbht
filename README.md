# BBHT

Bug Bounty Hunting Tools is a script to install the most popular tools used while looking for vulnerabilities for a bug bounty program. This version is modified according to my preferences, I have added some additional tools and updated some of the commands.

# Tools

- dirsearch
- JSParser
- knockpy
- lazys3
- recon_profile
- sqlmap-dev
- Sublist3r
- teh_s3_bucketeers
- virtual-host-discovery
- webscreenshot
- Massdns
- Asnlookup
- Unfurl
- Waybackurls
- Httpx
- Nuclei
- Seclists collection
- Amass
- OneForAll
- Subfinder
- Findomain
- LinkFinder
- EyeWitness
- Webscreenshot.py
- ffuf
- WebScreenshot
- Crobat
- PureDNS
- reconFTW

This script also grabs the aliases created and published here:
https://github.com/njmulsqb/Recon-Aliases

# Installing

- git clone https://github.com/njmulsqb/bbht.git
- cd bbht
- chmod +x install.sh
- ./install.sh


# To Do
- Replace pip installation of S3Scanner tool with source installation
- Analyze https://github.com/amec0e/BBIS/blob/main/BBIS and see what additional things I can add into my bbht
- Snap is not available on WSL, so snap commands arent working there. Check its alternative
