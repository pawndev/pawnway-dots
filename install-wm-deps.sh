# other package to consider
# gamemode
# lsd
# g4music
# boo-grub-git 
# sddm-git boo-sddm-git
# proxzima-plymouth-git
# blueman
# libinput-gestures
# powerbar
# # batsignal
# avizo

yay -S base-devel \
    hyprland-git \
    hyprpicker-git \
    xdg-desktop-portal-hyprland \
    waybar \
    kitty \
    pavucontrol \
    playerctl \
    light \
    ttf-cascadia-code-nerd \
    ttf-jetbrains-mono-nerd \
    ttf-material-design-icons-desktop-git \
    wlogout \
    swww \
    swaync \
    swaylock-effects-git \
    jq \
    slurp \
    mint-themes \
    anyrun-git \
    grim \
    wl-clipboard \
    libappindicator-gtk3 \
    batsignal

# yay -S base-devel \
#     pokemon-colorscripts-git \
#     cava \
#     wofi \
#     starship \
#     tty-clock-git \
#     btop \
#     mpd \
#     mpd-mpris \
#     mpv \
#     mpv-mpris \
#     qt5-base qt5-wayland qt6-base qt6-wayland \
#     bat \
#     cliphist \
#     visual-studio-code-bin \
#     yad \
#     network-manager-applet --needed

if id -nG "$USER" | grep -qw "video"; then
    echo $USER belongs to video group
else
    echo add $USER to the video group, restart for applying
    usermod -aG video $USER
fi

