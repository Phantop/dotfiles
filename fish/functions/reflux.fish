function reflux
    for i in (curlflux "$argv"feeds | jq -rc '.[] | select(.parsing_error_count!=0)')
        eval curl "$(cat ~/.config/miniflux)/feeds/$(echo $i | jq -r .id)/refresh" -X PUT
    end
end
