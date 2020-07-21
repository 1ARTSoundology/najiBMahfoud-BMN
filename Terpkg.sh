pkg update ; pkg upgrade ; pkg install git wget  termux-auth nano proot hexedit util-linux  clamav nano clang openssh file golang gdb bitcoin python openssl-tool apk-tools tracepath nmap termux-api termux-tools cmake automake autoconf autoconf nginx  dnsutils netcat flex htop dx 
wget https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh
sh metasploit.sh
wget https://raw.githubusercontent.com/Hax4us/java/master/installjava
sh installjava
apt update > /dev/null 2>&1 && apt --assume-yes install wget > /dev/null 2>&1 && wget https://github.com/MasterDevX/Termux-ADB/raw/master/InstallTools.sh -q && bash InstallTools.sh
git clone https://github.com/xeffyr/termux-dotfiles
cd termux-dotfiles
wget https://main.termux.com/aarch64/
wget https://main.termux-mirror.ml/aarch64/qemu-system-aarch64-headless_1%3A4.1.1-5_aarch64.deb
wget https://main
wget
wget 
wget
wget 
wget


mkdir .termux
touch  .termux/termux.properties
echo "# Open a new terminal with ctrl + t (volume down + t)
shortcut.create-session = ctrl + t

# Go one session down with (for example) ctrl + 2
shortcut.next-session = ctrl + 2

# Go one session up with (for example) ctrl + 1
shortcut.previous-session = ctrl + 1

# Rename a session with (for example) ctrl + n
shortcut.rename-session = ctrl + n

# Vibrate device (default).
bell-character=vibrate

# Beep with a sound.
bell-character=beep

# Ignore bell character.
bell-character=ignore

# Send the Escape key.
back-key=escape

# Hide keyboard or leave app (default).
back-key=back
# extra key
extra-keys = [ \
  ['[',']','{','}','(',')','"','=','<','>','!','$'] ,\
  ['ESC', ';', '-', '_', '|', 'UP', '&', '*', 'PGDN', '/','#','+'], \
  ['TAB', 'DEL', 'CTRL', 'ALT', 'LEFT', 'DOWN', 'RIGHT', 'HOME' ,'END' , ':','`','&'] \
]
