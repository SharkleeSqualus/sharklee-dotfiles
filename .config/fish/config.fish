# Disable Fish greeting
set -g fish_greeting
# Set vim keybinds
fish_vi_key_bindings
# Show Fastfetch only in sufficiently large terminals
if status is-interactive
    if test $COLUMNS -ge 80 -a $LINES -ge 20
        fastfetch
    end
end
#alias mpv-install='/home/sharklee/.local/bin/mpv-manager'
#function fish_prompt
#    set -l last_status $status
#   if test $last_status -ne 0
#       set_color red
#   else
#       set_color green
#   end
