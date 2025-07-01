#!/bin/awk -f
/^Traceback \(most recent call last\):/ { traceback = 1 }
traceback { print }
traceback && /^[0-9]{4}-[0-9]{2}-[0-9]{2}/ { exit }
