# PATHS #
set fish_user_paths ~/.local/bin $D/Installs/bin /usr/lib/ccache/bin /usr/bin /usr/sbin /sbin /bin 
set fish_function_path $fish_function_path $D/Games/Minecraft/Game/functions

# FOR INTERACTIVE TERMINAL #
tty -s && starship init fish | source
