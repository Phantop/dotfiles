function dl -w aria2c
	test $argv && aria2c --file-allocation=none -c -x 16 -s 16 $argv || cd ~/Downloads/
end
