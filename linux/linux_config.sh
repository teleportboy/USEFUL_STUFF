# X:
sudo apt install xinit -y

# i3:
sudo apt install i3 -y
startx

# AUDIO SETTINGS:
sudo apt install alsa-tools -y
sudo install alsamixergui -y


# FOR MONITORS SETTINGS:
sudo apt install arandr -y

# JETBRAINS FONTS:
sudo apt install fonts-jetbrains-mono

# URXVT: 
sudo apt install rxvt-unicode xsel -y

echo 'URxvt.scrollstyle: xterm' >> ~/.Xresources
echo 'URxvt.scrollBar: false' >> ~/.Xresources
echo 'URxvt.secondaryScreen: 1' >> ~/.Xresources
echo 'URxvt.secondaryScroll: 0' >> ~/.Xresources
echo 'URxvt.secondaryWheel: 1' >> ~/.Xresources
echo 'URxvt.font: xft:JetBrainsMono-Medium:size=10' >> ~/.Xresources
echo 'URxvt.letterSpace: 0' >> ~/.Xresources
echo 'URxvt.cursorBlink: false' >> ~/.Xresources
echo 'URxvt.colorUL: #4682B4' >> ~/.Xresources
echo 'URxvt.foreground: #EAEAEA' >> ~/.Xresources
echo 'URxvt.background: #1E1E1E' >> ~/.Xresources
echo 'URxvt.clipboard.autocopy: true' >> ~/.Xresources
echo 'URxvt.iso14755: false' >> ~/.Xresources
echo 'URxvt.iso14755_52: false' >> ~/.Xresources

echo 'xrdb merge ~/.Xresources' >> ~/.xinitrc
echo 'exec i3' >> ~/.xinitrc

sed -i 's/bindsym $mod+Return exec i3-sensible-terminal/bindsym $mod+Return exec urxvt/g' ~/.config/i3/config


# DOUBLECMD:
sudo apt install doublecmd-qt -y

# CURL:
sudo apt install curl -y
	# gnupg \
	# software-properties-common \
	# apt-transport-https \
	# curl -y

# DOCKER:
curl -fsSL https://get.docker.com -o get-docker.sh
DRY_RUN=1 sh ./get-docker.sh
# sudo apt install uidmap -y
# dockerd-rootless-setuptool.sh install
# echo 'export DOCKER_HOST=unix:///run/user/1000/docker.sock' >> ~/.bashrc
# echo 'export PATH=/usr/bin:$PATH'

# GIT:
sudo apt install git

# VMWARE TOOLS. ONLY FOR VMWARE VMs:
# sudo apt install open-vm-tools-desktop open-vm-tools -y

# VSCODE:
curl -o vscode.deb -L http://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i vscode.deb
sudo apt install -f -y

# CHROME:
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y


# ZSH:
sudo apt install zsh -y
sudo chsh -s /bin/zsh

# OhMyZsh:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
omz update
sed -i 's/_THEME=\"robbyrussel\"/_THEME=\"agnoster\"/g' ~/.zshrc

# POWERLINE FONTS:
sudo apt-get install fonts-powerline -y

# POWERLINE:
sudo apt install powerline -y

# LANGUAGE SETTINGS:
setxkbmap -option grp:ctrl_shift_toggle,grp_led:scroll us,ru

# INOTIFY:
echo fs.inotify.max_user_watches=16384 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# TODO: swappiness
# TODO: nnn & plugins
# TODO: polybar
# TODO: dmenu
# TODO: i3 config
# TODO: restore workspaces
