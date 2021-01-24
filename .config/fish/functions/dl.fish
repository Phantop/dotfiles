function dl -w aria2c
	test "$argv" && aria2c -c -x16 -s16 $argv || cd ~/Downloads
end
