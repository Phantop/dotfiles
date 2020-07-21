function ao3dl
    set dir (sed (math (grep -n '<title>' $argv | cut -d: -f1) + 1)!d $argv | sed -e 's/^[ \t]*//')
    mkdir $dir; cd $dir
    for i in (grep works/[0-9]\* ../$argv -o | uniq | sed 's/works\///g' | sed '/^$/d')
        dl https://download.archiveofourown.org/downloads/$i/\*.epub
    end
    cd ..

    for i in (lynx -dump -hiddenlinks=listonly out.html | grep '\.epub' | awk 'FNR > 2 {print$2}' | grep http)
        dl $i
    end

    for i in (find . -maxdepth 2 -printf "%f\n" | sort -f | uniq -di)
        mv $i */$i
    end
end
