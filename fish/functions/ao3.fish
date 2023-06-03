function ao3
    grep works/.\*/b $argv | cut -d/ -f3 | uniq | parallel curl -OJL ao3.org/downloads/{}/1.epub
    for i in *.epub
        set title (tar Oxf $i content.opf | pup | grep -A1 -m1 dc:title | tail -1 | sed 's/^ *//' | tr -d /)
        set creator (tar Oxf $i content.opf | pup | grep -A1 -m1 dc:creator | tail -1 | sed 's/^ *//' | tr -d /)
        mv $i "$creator - $title.epub"
    end
end
