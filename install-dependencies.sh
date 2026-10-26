#!/bin/sh

echo "INSTALL NEEDED/RECOMMENDED DEPENDENCIES..."
sleep 1
sudo pacman -S --needed git base-devel
if command -v yay >/dev/null 2>&1; then
  echo "yay is already installed"
else
  echo "Installing yay"
  git clone https://aur.archlinux.org/yay.git
  cd yay-bin
  echo "Building yay"
  makepkg -si --noconfirm
  cd ..
  echo "Cleaning up installer files for yay"
  rm -rf yay-bin
  echo "yay installation complete"
fi

yay -S networkmanager network-manager-applet waybar hyprpolkitagent polkit-qt6 dunst hyprpaper waypaper wl-clipboard slurp wireplumber brightnessctl playerctl wlogout pavucontrol eww
echo "Installation of my default apps (kitty, thunar, rofi, zen-browser-bin)..."
echo "If you do not want them, make sure to change your preferred programs in modules/variables.lua."
printf "Do you want to install my default apps? (y/n): "
read -r response

case "$response" in
[Yy][Es][Ss] | [Yy])
  echo "Installing my default apps..."
  sleep 1
  yay -S kitty thunar rofi zen-browser-bin
  ;;
[Nn][Oo] | [Nn])
  echo "Installation stopped"
  exit 0
  ;;
*)
  echo "Invalid input. Type y/n or yes/no"
  exit 1
  ;;
esac
