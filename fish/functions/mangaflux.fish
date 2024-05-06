function mangaflux
    set cat (cat ~/.config/miniflux)/categories/74
    set entries (eval curl $cat/entries?status=unread | jq -r .entries[].url | grep mangadex)
    eval curl -X PUT $cat/mark-all-as-read
    parallel -u mangadex-downloader $argv ::: $entries
end
