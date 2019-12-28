# Defined in /tmp/fish.qhqZn9/ao3dl.fish @ line 2
function ao3dl
	set dir (sed (math (grep -n '<title>' $argv | cut -d: -f1) + 1)!d $argv | sed -e 's/^[ \t]*//')
    mkdir $dir; cd $dir
    for i in (grep works/[0-9]\* ../$argv -o | uniq | sed 's/works\///g' | sed '/^$/d')
        dl https://download.archiveofourown.org/downloads/$i/\*.epub
    end
    cd ..
end
