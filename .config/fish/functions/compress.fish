function compress -w 7z
	7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on (pwd)/(basename $argv | rev | cut -f 2- -d '.' | rev).7z $argv
end
