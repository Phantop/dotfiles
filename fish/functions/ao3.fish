function ao3
    grep works/.\*/b $argv | cut -d/ -f3 | uniq | parallel curl -OJL ao3.org/downloads/{}/1.epub
    for i in *.epub
        set title (tar Oxf $i content.opf | xq -r .package.metadata[\"dc:title\"])
        set creator (tar Oxf $i content.opf | xq -r .package.metadata[\"dc:creator\"][\"#text\"])
        mv $i "$creator - $title.epub"
    end
end
