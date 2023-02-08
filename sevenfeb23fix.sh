if [ "$(id -u)" != "0" ]; then

   echo "Please Run This Script As A root User" 1>&2

   exit 1

fi 

apt install sudo -y

echo "#######################################################################################"

echo "#"

echo "#                                  VPSFREE.ES SCRIPTS"

echo "#"

echo "#                           Copyright (C) 2022 - 2023, VPSFREE.ES"

echo "#"

echo "#"

echo "#######################################################################################"

echo ""

echo "* [0] Install Minecraft Server Files"

echo "* [1] Install Warp to enable Ipv4 on Ipv6 only"

echo "* [2] Download Playit files to make tunnels to V4 & V6"

echo "* [3] Install PufferPanel"

echo "* [4] Install WebPage"

echo "* [5] Install CRDP/XRDP"

echo "* [6] Install Basic Packages"

echo "* [7] Install Pterodactyl Panel"

echo "* [8] Exit" 

read -p "Enter Input (0-7): " input 

case $input in 

    0)

    apt update

    wget -N https://github.com/dxomg/vpsfreescripts/raw/main/vpsfreescripts/minecraftscript/install.sh && bash install.sh;;

    1)

    apt update

    apt install curl -y

    wget -N https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/warpv6/install.sh && bash install.sh;;

    2)
    
    apt install curl -y
    
    curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add -

    curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list

    apt update

    apt install playit

    echo "PLAYIT INSTALLATION COMPLETE! proceeding in 3s"

    sleep 3

    playit;;

    3)

    apt update && apt install curl -y

    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash

    sudo apt-get install pufferpanel 

    sudo systemctl enable pufferpanel

    sudo pufferpanel user add

    sudo systemctl enable --now pufferpanel;;

    4)

    wget -N https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/websitescript/install.sh && bash install.sh;;

    5)

    wget -N https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/crdpscript/install.sh && bash install.sh;;

    6)

    apt install git neofetch sudo

    echo "##############################"

    echo ""

    echo "Installed git and neofetch"

    echo ""

    echo "##############################";;

    7)

    wget -N https://raw.githubusercontent.com/RishixD4511/vpsfreefixes/main/ptero.sh && bash ptero.sh;;

    8) echo "Exit" && exit;;

esac
