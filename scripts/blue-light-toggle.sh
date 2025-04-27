is_active=$(hyprshade current)

if [[ "$is_active" != "" ]]; then
    hyprshade off
else
    hyprshade on blue-light-filter
fi