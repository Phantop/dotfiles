function gsu
	git submodule update --init --recursive
   git submodule foreach git pull origin master
end
