function bat --wraps='upower -i $(upower -e | grep "BAT") | grep -E "percentage|state"' --description 'alias bat=upower -i $(upower -e | grep "BAT") | grep -E "percentage|state"'
  upower -i $(upower -e | grep "BAT") | grep -E "percentage|state" $argv
        
end
