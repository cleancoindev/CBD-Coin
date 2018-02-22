#!bin/bash
apt install dialog
apt-get update && apt-get -y upgrade && apt-get -y install libwww-perl build-essential libtool automake autotools-dev autoconf pkg-config libssl-dev libgmp3-dev libevent-dev bsdmainutils libdb++-dev libminiupnpc-dev libboost-all-dev libqrencode-dev unzip && fallocate -l 4G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo "vm.swappiness=10" >> /etc/sysctl.conf && echo "/swapfile none swap sw 0 0" >> /etc/fstab
dialog --msgbox "Welcome to GanjaCoin Masternode Install Script/ Tut for VPS/Linux. Lets start by updating your system" 10 20
dialog --msgbox "Great! Youre up to date. Lets download,create and compile GCFORK" 10 20
mkdir -p /root/dev && cd /root/dev && git clone https://github.com/legends420/GCFORK.git && cd /root/dev/GCFORK/src && make -f makefile.unix && sudo cp /root/dev/GCFORK/MNSampleGanjaProject.conf ~/.MRJA/GanjaProject.conf
dialog --msgbox "Now lets run Ganjad Daemon" 10 20
./Ganjad
dialog --msgbox "Some dirty work for you. Put in your privkey,txindex and your VPS IP address" 10 20
nano ~/.MRJA/GanjaProject.conf
dialog --msgbox "Time to start up the node and your all done here :-)" 10 20
./Ganjad
echo "Enjoy GanjaProject, Make sure to message Legends on DISCORD to join NODEINATI"
