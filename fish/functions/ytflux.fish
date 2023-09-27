function ytflux
    set cat 3
    eval curl (cat ~/.miniflux)/entries?status=unread\&category_id=$cat | jq .entries[].url | xargs yt-dlp
    eval curl -X PUT (cat ~/.miniflux)/categories/$cat/mark-all-as-read
end
