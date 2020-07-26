# Defined in /tmp/fish.MYztjy/gdbypass.fish @ line 2
function gdbypass
    qb (curl "https://gdbypass.host/api/?link="$argv | cut -d\" -f22 | sed 's/[\]//g')
end
