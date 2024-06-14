if [ ! -d "~/Desktop" ]; then
  echo "creating user folder directories (Desktop, Documents, etc)"
  pacman -S xdg-user-dirs
  xdg-user-dirs-update
  pacman -Rs xdg-user-dirs
fi

pacman -Rs wofi dolphin

pacman -S flatpak git base-devel rofi-wayland hyprpaper waybar nautilus xterm fuse ntfs-3g feh neovim trash-cli bat lxappearance fastfetch

echo -e "[multilib]\nInclude = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
pacman -Syu
pacman -S ttf-liberation lib32-mesa lib32-vulkan-radeon
pacman -S steam

mv ~/.config ~/.config.bak
cp -r config ~/.config

mv ~/.bashrc ~/.bashrc.bak
cp bashrc ~/.bashrc

mkdir ~/.local/share/fonts
cp -r CaskaydiaCoveNF ~/.local/share/fonts/CaskaydiaCoveNF
