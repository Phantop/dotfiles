function ao3
    grep works/.\*/b $argv | cut -d/ -f3 | uniq | parallel curl -OJL ao3.org/downloads/{}/1.epub
    for i in *.epub
        mv $i (tar Oxf $i content.opf | pup | grep -A1 -m1 dc:title | tail -1 | sed 's/^ *//' | tr -d /).epub
    end
end
