function gupall
	for i in *
       cd $i
       git pull
       cd ..
   end
end
