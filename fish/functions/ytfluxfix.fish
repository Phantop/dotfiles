function ytfluxfix
    set instances (curl https://api.invidious.io/instances.json | jq -r '.[] | select(.[1].type == "https" and .[1].monitor.uptime >= 99) [0]')
    for i in (eval curl (cat ~/.config/miniflux)/categories/3/feeds | jq -rc '.[] | select(.parsing_error_count!=0)' | head -n15)
        set url (trurl -s host=(random choice $instances) (echo $i | jq -r .feed_url))
        set id (echo $i | jq -r .id)
        eval curl "$(cat ~/.config/miniflux)/feeds/$id" -X PUT -d @(jq -rn --arg feed_url $url '$ARGS.named' | psub)
        eval curl "$(cat ~/.config/miniflux)/feeds/$id/refresh" -X PUT
    end
end
