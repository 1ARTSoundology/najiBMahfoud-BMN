pkg update ; pkg upgrade ; pkg install git wget  termux-auth nano proot hexedit util-linux  clamav nano clang openssh file golang gdb bitcoin python openssl-tool apk-tools tracepath nmap termux-api termux-tools cmake automake autoconf autoconf nginx  dnsutils netcat flex htop
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
 ['BACKSLASH','QUOTE','_','-','(',')',':','=','UP',';'], \
 ['TAB','CTRL','ALT','F1','|','/','*','LEFT','DOWN','RIGHT'] \
]" > .termux/termux.properties
