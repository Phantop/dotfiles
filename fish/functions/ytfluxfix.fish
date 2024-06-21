function ytfluxfix
    for i in (eval curl (cat ~/.config/miniflux)/categories/3/feeds | jq -rc '.[] | select(.parsing_error_count!=0)' | head -n15)
        set instances (curl https://redirect.invidious.io | pup noscript text{} | htmldecode | pup .instances-list a text{})
        set url (trurl -s host=(echo $instances | shuf -n1) (echo $i | jq -r .feed_url))
        set id (echo $i | jq -r .id)
        eval curl "$(cat ~/.config/miniflux)/feeds/$id" -X PUT -d @(jq -rn --arg feed_url $url '$ARGS.named' | psub)
        eval curl "$(cat ~/.config/miniflux)/feeds/$id/refresh" -X PUT
    end
end
