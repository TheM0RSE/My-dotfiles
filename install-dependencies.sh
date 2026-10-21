echo "INSTALL NEEDED/RECOMMENDED DEPENDENCIES..."
sleep 1
sudo pacman -S networkmanager network-manager-applet waybar hyprpolkitagent dunst hyprpaper waypaper wl-clipboard slurp wireplumber brightnessctl playerctl
echo "INSTALL MY DEFAULT PROGRAMS (SKIP IF YOU WANT TO INSTALL YOUR OWN DEFAULT PROGRAMS)"
sleep 1
sudo pacman -S discord kitty thunar rofi zen-browser
