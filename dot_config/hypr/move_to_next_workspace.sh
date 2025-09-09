current_workspace=$(hyprctl activeworkspace | rg \\d+ -o | head -n1)
next_workspace=$(($current_workspace+1))
hyprctl dispatch movetoworkspace $next_workspace

if [ $(($next_workspace%2)) -eq 1 ]
then
    hyprctl dispatch workspace $(($next_workspace+1))
    hyprctl dispatch workspace $(($next_workspace))
fi
