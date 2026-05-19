#!/usr/bin/env bash
set -euo pipefail

in="$1"
out="$2"

# Ensure output directory exists
mkdir -p "$(dirname "$out")"

# Normalize extension (lowercase)
ext="${in##*.}"
ext="$(echo "$ext" | tr '[:upper:]' '[:lower:]')"

# Temporary file to avoid partial writes
tmp="${out}.tmp"

# Bitrate setting (adjust as desired)
BITRATE="96"

if [[ "$ext" == "flac" ]]; then
    # Direct FLAC -> Opus (best path)
    opusenc --bitrate "$BITRATE" --quiet "$in" "$tmp"
else
    # Decode via ffmpeg, pipe raw audio into opusenc
    ffmpeg -v error -i "$in" -map_metadata 0:s:a:0 -f flac - | \
        opusenc --bitrate "$BITRATE" --quiet - "$tmp"
fi

# Atomic move into place
mv "$tmp" "$out"
