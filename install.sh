#/bin/bash
############################################
#           PROJECT : ssh install help     #
#           Author : AK HUB                #
############################################
#             ###      ##  ##              #
#            ## ##     ## ##               #
#           #######    ####                #
#          ##     ##   ##  ##              #
#         ##       ##  ##   ##             #
############################################
echo -e "                            \e[32m[*]\e[34m WELCOME TO AK HUB S TOOLS  \e[m "
echo
echo " "
echo " "
echo -e " \e[42m \e[42m╔════════════════════════════════════════════════════════════╗\e[m\e[m "
echo -e " \e[42m \e[42m║████████████████████████████████████████████████████████████║\e[m\e[m "
echo -e " \e[42m \e[42m║██═█═█═█═█═█═█═██        L O G I N         ██═█═█═█═█═█═█═██║\e[m\e[m "
echo -e " \e[42m \e[42m║████████████████████████████████████████████████████████████║\e[m\e[m "
echo -e " \e[42m \e[42m║█████████████████ ╔═══════════════════════╗█████████████████║\e[m\e[m "
echo -e " \e[42m \e[42m║██ █ █ █ ██╔══════╝   █████╗   ██╗  ██╗   ╚═════╗██ █ █ █ ██║\e[m\e[m "
echo -e " \e[42m \e[42m║███ █ █ █ █║ ╔═══╗   ██╔══██╗  ██║ ██╔╝    ╔═══╗║█ █ █ █ ███║\e[m\e[m "
echo -e " \e[42m \e[42m║██ █ █ █ ██║ ║ █ ║   ███████║  █████═╝     ║ █ ║║██ █ █ █ ██║\e[m\e[m "
echo -e " \e[42m \e[42m║███ █ █ █ █║ ║ █ ║   ██╔══██║  ██╔═██╗     ║ █ ║║█ █ █ █ ███║\e[m\e[m "
echo -e " \e[42m \e[42m║██ █ █ █ ██║ ╚═══╝   ██║  ██║  ██║ ╚██╗    ╚═══╝║██ █ █ █ ██║\e[m\e[m "
echo -e " \e[42m \e[42m║███ █ █ █ █╚═════╗   ╚═╝  ╚═╝  ╚═╝  ╚═╝   ╔═════╝█ █ █ █ ███║\e[m\e[m "
echo -e " \e[42m \e[42m║█████████████████╚════════════════════════╝█████████████████║\e[m\e[m "
echo -e " \e[42m \e[42m║████████████████████████████████████████████████████████████║\e[m\e[m "
echo -e " \e[42m \e[42m║██═█═█═█═█═█═█═██      W E L C O M E       ██═█═█═█═█═█═█═██║\e[m\e[m "
echo -e " \e[42m \e[42m║████████████████████████████████████████████████████████████║\e[m\e[m "
echo -e " \e[42m \e[42m╚════════════════════════════════════════════════════════════╝\e[m\e[m "
echo " "
echo " "
sleep 3
clear
echo " "
echo " "
echo -e " \e[42m \e[42m############################################\e[m\e[m "
echo -e " \e[42m \e[42m#           PROJECT : ssh install help     #\e[m\e[m "
echo -e " \e[42m \e[42m#           Author : AK HUB                #\e[m\e[m "
echo -e " \e[42m \e[42m############################################\e[m\e[m "
echo -e " \e[42m \e[42m#             ###      ##  ##              #\e[m\e[m "
echo -e " \e[42m \e[42m#            ## ##     ## ##               #\e[m\e[m "
echo -e " \e[42m \e[42m#           #######    ####                #\e[m\e[m "
echo -e " \e[42m \e[42m#          ##     ##   ##  ##              #\e[m\e[m "
echo -e " \e[42m \e[42m#         ##       ##  ##   ##             #\e[m\e[m "
echo -e " \e[42m \e[42m############################################\e[m\e[m "
echo " "
echo " "
sleep 2
echo "[*] Installing AK-HUB tool"
echo "[*] Please wait"
myipv4=$(ifconfig wlan0 | grep 'inet' | grep -v '::1' | grep -v '127.0.0.1' | awk NR==1'{print $2}')
myid=$(sshd | whoami )
cd ~
if [ -f "ssh" ]
then
rm ssh
fi
touch ssh
echo "#/bin/bash
#################
#################
myip=\$(ifconfig wlan0 | grep 'inet' | grep -v '::1' | grep -v '127.0.0.1' | awk NR==1'{print \$2}')
myid=\$(sshd | whoami )
echo \"[*] Starting ssh\"
sshd
whoami
nmap localhost
echo
echo
echo \"=====================================\"
echo \"ssh \$myid@\$myip -p 8022\"
echo \"DONE\"
echo \"=====================================\"
" >> ~/ssh
chmod +x ssh
sshd
whoami
nmap localhost
echo "Create password to your ssh"
passwd $myid
echo "[*] Done "
echo "[*] Hint: Use ./~/ssh to run ssh"
echo "[*] Hint: Use pkill ssh to stop ssh"
