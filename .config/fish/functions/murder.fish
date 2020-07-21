function murder -w killall
	killall $argv -s SIGKILL
end
