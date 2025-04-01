if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

# alias --save bat='upower -i $(upower -e | grep "BAT") | grep -E "percentage|state"'
