# install packages
sudo pacman -S plasma konsole kvantum stow latte-dock firefox dolphin zsh vi

# install WhiteSur-kde
mkdir -p ~/Themes
git clone https://github.com/vinceliuice/WhiteSur-kde ~/Themes/WhiteSur-kde
~/Themes/WhiteSur-kde/install.sh
git clone https://github.com/vinceliuice/WhiteSur-icon-theme ~/Themes/WhiteSur-icon-theme
~/Themes/WhiteSur-icon-theme/install.sh

# dotfiles
(cd ../ && stow Wallpapers)