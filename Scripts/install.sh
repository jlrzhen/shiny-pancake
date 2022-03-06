# configure localtime (temp fix)
sudo rm -rf /etc/localtime
sudo ln -sf /usr/share/zoneinfo/Canada/Central /etc/localtime

# Install packages
sudo pacman -S plasma konsole kvantum stow latte-dock firefox dolphin zsh vi
# Taskbar utilities
sudo pacman -S gnome-system-monitor dolphin

# Install WhiteSur-kde
mkdir -p ~/Themes
git clone https://github.com/vinceliuice/WhiteSur-kde ~/Themes/WhiteSur-kde
~/Themes/WhiteSur-kde/install.sh
git clone https://github.com/vinceliuice/WhiteSur-icon-theme ~/Themes/WhiteSur-icon-theme
~/Themes/WhiteSur-icon-theme/install.sh

# dotfiles
(cd ../ && stow Xorg)
(cd ../ && stow Wallpapers)
(cd ../ && stow zsh)

# Change to zsh
chsh -s $(which zsh)

# virtualbox guest additions
sudo pacman -S virtualbox-guest-utils
sudo systemctl enable vboxservice
