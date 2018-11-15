# Defined in /tmp/fish.3MFBrD/clip.fish @ line 1
function clip
	bash -c 'if [[ -t 0  && -z "$1" ]]; then 
    # output contents of clipboard
    xclip -out -selection clipboard || exit 1
elif [[ -n "$1" ]]; then
    # copy file contents to clipboard
    xclip -in -selection clipboard < "$1" || exit 1
else
    # copy stdin to clipboard
    xclip -in -selection clipboard <&0 || exit 1
fi'
end
