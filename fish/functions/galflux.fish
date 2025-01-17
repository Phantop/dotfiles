function galflux
    set cat (cat ~/.config/miniflux)/categories/2
    set entries (eval curl $cat/entries?status=unread | jq -r .entries[].url)
    eval curl -X PUT $cat/mark-all-as-read
    parallel -u 'gallery-dl (trurl -s host=www.tumblr.com {})' ::: $entries
end
