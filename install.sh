#!/bin/bash
G='\033[0;32m' #Green Colour
NC='\033[0m'   # No colour

echo "${G}[+] Special Thanks and credits to Nahamsec${NC}" 
#Important updates
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get install python3-pip -y
sudo apt-get install git -y
sudo apt-get autoremove -y

#Setup of GO lang
echo "${G}[+] Installing go, if already go is installed then updating it${NC}"
					LATEST_GO_VERSION="$(curl --silent https://go.dev/VERSION?m=text)";
					echo "${G}[+] Installing Golang${NC}"
					wget https://golang.org/dl/${LATEST_GO_VERSION}.linux-amd64.tar.gz
					sudo chmod 777 ${LATEST_GO_VERSION}.linux-amd64.tar.gz
					sudo tar -xvf ${LATEST_GO_VERSION}.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					# Writing in .bashrc
					echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
					echo 'export GOPATH=$HOME/go'	>> ~/.bashrc			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc	
					source ~/.bashrc
					# Writing in .zshrc
					echo 'export GOROOT=/usr/local/go' >> ~/.zshrc
					echo 'export GOPATH=$HOME/go' >> ~/.zshrc
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.zshrc
					source ~/.zshrc
#Directory to store Weapons 
echo "${G}[+] Making a directory to Store your weapons${NC}"
mkdir ~/Weapons
cd ~/Weapons/

#Installing pdtm
echo "${G}[+] Installing Pdtm${NC}"
go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
sudo mv ~/go/bin/* /usr/local/bin
pdtm -ia

#Installing Sublister 
echo "${G}[+] Installing Sublist3r${NC}"
sudo git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/Weapons/
echo "${G}[+] A bullet called Sublist3r is loaded${NC}"

#Lazyrecon
echo "${G}[+] Installing lazyrecon${NC}"
sudo git clone https://github.com/nahamsec/lazyrecon.git
cd ~/Weapons/
echo "${G}[+] A bullet called Lazyrecon is loaded${NC}"

#Waybackurls
echo "${G}[+] Installing waybackurls${NC}"
go install github.com/tomnomnom/waybackurls@latest
echo "${G}[+] A bullet called waybackurls is loaded${NC}"

#sqlmap
echo "${G}[+] Installing sqlmap${NC}"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/Weapons/
echo "${G}[+] A bullet called sqlmap is loaded${NC}"

#ffuf
echo "${G}[+] Installing ffuf${NC}"
go install github.com/ffuf/ffuf@latest
echo "${G}[+] A bullet called ffuf is loaded${NC}"

#nuclei
#echo "${G}[+] Installing nuclei${NC}"
#go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
#echo "${G}[+] A bullet called nuclei is loaded${NC}"

#amass
echo "${G}[+] Installing amass${NC}"
go install -v github.com/OWASP/Amass/v3/...@master
echo "${G}[+] A bullet called amass is loaded${NC}"

#dirsearch
echo "${G}[+] Installing dirsearch${NC}"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/Weapons/
echo "${G}[+] A bullet called dirsearch is loaded${NC}"

#wpscan
echo "${G}[+] Installing wpscan${NC}"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/Weapons/
echo "${G}[+] A bullet called wpscan is loaded${NC}"

#nmap
echo "${G}[+] Installing nmap${NC}"
sudo apt-get install -y nmap
cd ~/Weapons/
echo "${G}[+] A bullet called nmap is loaded${NC}"

#httprobe
echo "${G}[+] Installing httprobe${NC}"
go install github.com/tomnomnom/httprobe @latest
echo "${G}[+] A bullet called httprobe is loaded${NC}"

#httpx
#echo "${G}[+] Installing httpx${NC}"
#go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
#echo "${G}[+] A bullet called httpx is loaded${NC}"

#gobuster
echo "${G}[+] Installing gobuster${NC}"
go install github.com/OJ/gobuster/v3@latest
echo "${G}[+] A bullet called gobuster is loaded${NC}"

#gau
echo "${G}[+] Installing gau${NC}"
go install github.com/lc/gau/v2/cmd/gau@latest
echo "${G}[+] A bullet called gau is loaded${NC}"

#assetfinder
echo "${G}[+] Installing assetfinder${NC}"
go install github.com/tomnomnom/assetfinder@latest
echo "${G}[+] A bullet called assetfinder is loaded${NC}"

echo "${G}[+] Installing dnscan${NC}"
sudo git clone https://github.com/rbsec/dnscan.git
cd dnscan*
pip install -r requirements.txt
cd ~/Weapons/
echo "${G}[+] A bullet called dnscan is loaded${NC}"

#SecList
echo "${G}[+] Downloading the root of all hunting SecList${NC}"
git clone https://github.com/danielmiessler/SecLists.git
cd ~/Weapons/
echo "${G}[+] The final bullet SecList is loaded${NC}"


echo "${G}[+] Thanks for using this script :) Keep Learning and Keep Hacking ;)${NC}"
