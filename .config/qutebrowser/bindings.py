bind = {
    '<Ctrl-q>': 'close',
    '<Ctrl-r>': 'spawn -u readability',
    '<Ctrl-w>': 'tab-close',
    '<Ctrl-Shift-R>': 'spawn kitty rdrview -B qutebrowser {url}',

    'm': 'mpv {url}',
    'M': 'mpv4 {url}',
    ',': 'hint links run mpv {hint-url}',
    ';m': 'hint links run mpv {hint-url}',
    ';M': 'hint links run mpv4 {hint-url}',

    's1': 'download-open',
    'sa': 'open -t archive.is/?run=1&url={url}',
    'sc': 'config-cycle content.user_stylesheets adapta.css ""',
    'sd': "spawn fish -c 'dl; open (ls | rofi -dmenu -b -i || exit 0)'",
    'sg': 'debug-dump-page ~/Downloads/dump.html',
    'sq': 'spawn -u qr',
    'sr': 'remove-sticky',
    'st': 'config-cycle content.proxy socks://localhost:9050/ system',
}
for a, b in bind.items():
    config.bind(a, b)
