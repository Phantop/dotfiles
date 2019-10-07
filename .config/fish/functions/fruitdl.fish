# Defined in /tmp/fish.pU4dvl/fruitdl.fish @ line 2
function fruitdl
	rm -r $argv[2]
   set file (curl -sL github.com/$argv[1]-emu/$argv[1]-$argv[2]/releases/latest| grep -om1 $argv[1]-emu/$argv[1]-$argv[2]/releases/download/$argv[2]-[0-9]\*/$argv[1]-linux-[0-9]\*-[0-9a-f]\*).7z
   dl http://github.com/$file
   set file (basename $file)
   7z x $file
   rm $file
end
