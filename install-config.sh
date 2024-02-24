

echo "Backup old config"
cp -r $HOME/.config/alacritty $HOME/.config/alacritty_backup
cp -r $HOME/.config/btop $HOME/.config/btop_backup
cp -r $HOME/.config/hypr $HOME/.config/hypr_backup
cp -r $HOME/.config/kitty $HOME/.config/kitty_backup
cp -r $HOME/.config/swaylock $HOME/.config/swaylock_backup
cp -r $HOME/.config/waybar $HOME/.config/waybar_backup
cp -r $HOME/.config/wlogout $HOME/.config/wlogout_backup
cp -r $HOME/.config/swaync $HOME/.config/swaync_backup
# cp -r $HOME/.config/onagre $HOME/.config/onagre_backup
cp -r $HOME/.config/anyrun $HOME/.config/anyrun_backup

echo "Copy current config"
cp -r ./config/* $HOME/.config/
# cp -r ./config/btop/* $HOME/.config/btop
# cp -r ./config/hypr/* $HOME/.config/hypr 
# cp -r ./config/kitty/* $HOME/.config/kitty 
# cp -r ./config/swaylock/* $HOME/.config/swaylock
# cp -r ./config/waybar/* $HOME/.config/waybar
# cp -r ./config/wlogout/* $HOME/.config/wlogout
# cp -r ./config/swaync/* $HOME/.config/swaync
# # cp -r ./config/onagre/* $HOME/.config/onagre
# cp -r ./config/anyrun/* $HOME/.config/anyrun
# cp -r ./config/code-flags.conf $HOME/.config/
# cp -r ./config/electron25-flags.conf $HOME/.config/

echo "Copy script and binary to your home user dir at ~/scripts"
mkdir -p ~/scripts
cp ./scripts/* ~/scripts/