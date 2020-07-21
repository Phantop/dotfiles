function ff -w fd
	fd\
       -E sys -E caches -E cache -E .cache -E graphicPacks -E proc -E dosdevices -E .git\
       -H -d 5 -L -i $argv
end
