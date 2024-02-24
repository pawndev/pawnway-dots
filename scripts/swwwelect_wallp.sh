#!/usr/bin/env bash

# ls -R /usr/share/endeavouros/backgrounds |sort -R |tail -$N |while read file; do
#     echo $file
# done
p="$HOME/Pictures/Walls"
w=$(ls $p | shuf -n 1)
# echo $p/$w

if [ -z $xtrans ] ; then
    xtrans="grow"
fi

swww img $p/$w \
    --transition-bezier .43,1.19,1,.4 \
    --transition-type "$xtrans" \
    --transition-duration 0.7 \
    --transition-fps 60 \
    --invert-y \
    --transition-pos "$( hyprctl cursorpos )"