function ytflux
    set cat (cat ~/.config/miniflux)/categories/3
    set entries (eval curl $cat/entries?status=unread | jq -r .entries[].url)
    eval curl -X PUT $cat/mark-all-as-read
    parallel -u yt-dlp $argv ::: $entries
end
