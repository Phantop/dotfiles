# Defined in /home/glados/.config/fish/functions/tmpfiles.fish @ line 2
function tmpfiles
	sudo systemd-tmpfiles --create $argv
end
