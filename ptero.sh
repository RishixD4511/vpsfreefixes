if warp h foo >/dev/null 2>&1; then

    echo "##############################"

    echo ""

    echo "Warp detected, Proceeding in 10 seconds"

    echo ""

    echo "For help contact vincyxirt#1098v or open Ticket"

    echo ""

    echo "##############################"

    sleep 10

    apt update -y && apt install curl -y

    bash <(curl -s https://pterodactyl-installer.se)

else

    echo "##############################"

    echo ""

    echo "Installing warp first"

    echo ""

    echo "If this script doesnt works, please use the official vpsfree scripts!"

    echo ""

    echo "##############################"

    

if warp h foo >/dev/null 2>&1; then

    echo "Endpoint = [2001:67c:2b0:db32:0:1:a29f:c001]:2408" >> /etc/wireguard/wgcf.conf

    echo "Patch was successfully applied"

    echo "Now run 'warp o' again to activate warp"

else

    echo "======================================================"

    echo ""

    echo "When script starts connecting to warp please do Ctrl+C"

    echo "then do 'warp o'"

    echo "and then run this script again"

    echo "Script will proceed in 10 seconds"

    echo ""

    echo "======================================================"

    sleep 10

    wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh

    

    echo "Warp Installed! Pterodactyl proccess continues*"

    warp o 

    if warp h foo >/dev/null 2>&1; then

    echo "##############################"

    echo ""

    echo "Warp detected, Proceeding in 10 seconds"

    echo ""

    echo "For help contact vincyxirt#1098v or open Ticket"

    echo ""

    echo "##############################"

    sleep 10

    apt update -y && apt install curl -y

    bash <(curl -s https://pterodactyl-installer.se) 

    fi
