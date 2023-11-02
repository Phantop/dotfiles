function ytflux
    set cat 3
    set entries (eval curl (cat ~/.miniflux)/entries?status=unread\&category_id=$cat | jq -r .entries[].url)
    eval curl -X PUT (cat ~/.miniflux)/categories/$cat/mark-all-as-read
    parallel -u yt-dlp ::: $entries
end
