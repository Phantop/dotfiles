bind = {
    '<Ctrl-q>': 'close',
    '<Ctrl-r>': 'spawn -u readability',
    '<Ctrl-w>': 'tab-close',
    '<Alt+f>' : 'config-cycle hints.chars qwerasdf asdfghjkl',
    ',': 'hint links run mpv {hint-url}',
    'm': 'mpv {url}',
    's1': 'download-open',
    'sa': 'open -t archive.is/?run=1&url={url}',
    'sc': 'toggle-dark',
    'sd': "spawn fish -c 'dl; open (ls | rofi -dmenu -b -i || exit 0)'",
    'sg': 'debug-dump-page ~/Downloads/dump.html',
    'sq': 'spawn -u qr',
    'sr': 'remove-sticky',
    'st': 'config-cycle content.proxy socks://localhost:9050/ system',
    'T' : 'tab-next'
}
for a, b in bind.items():
    config.bind(a, b)
