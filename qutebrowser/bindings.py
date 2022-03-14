kitdl = 'spawn kitty fish -c "dl &&'
bind = {
    '<Ctrl-q>': 'close',
    '<Ctrl-r>': 'spawn -u readability',
    '<Ctrl-w>': 'tab-close',
    '<Ctrl-Shift-a>': 'jseval -q c=document.getElementsByTagName(\'option\'); window.location.href = c[c.length-1].value',
    '<Ctrl-Shift-x>': 'jseval -q window.location.href=document.getElementsByTagName(\'option\')[0].value',
    '<Alt+f>' : 'config-cycle hints.chars qwerasdf asdfghjkl',
    ',': 'hint links run mpv {hint-url}',
    ';a': 'hint links run ' + kitdl + ' dl {hint-url}"',
    ';v': 'hint links run ' + kitdl + ' ydl {hint-url}"',
    'aa': kitdl + ' dl {url}"',
    'av': kitdl + ' ydl {url}"',
    'e': 'config-cycle -p -u *://*.{url:host}/* content.javascript.enabled ;; reload',
    'E': 'config-cycle -p content.javascript.enabled ;; reload',
    'm': 'mpv {url}',
    's1': 'download-open',
    'sa': 'open -t archive.is/submit/?url={url}',
    'sc': 'toggle-dark',
    'sd': "spawn fish -c 'dl; open (ls | rofi -dmenu -b -i || exit 0)'",
    'sg': 'debug-dump-page ~/Downloads/dump.html',
    'sm': 'spawn kitty fish -c "monolith {url} -o ~/Downloads/{url:domain}.html"',
    'sq': 'spawn -u qr',
    'sr': 'remove-sticky',
    'st': 'config-cycle -p content.proxy socks://localhost:9050/ system',
    'T' : 'tab-next',
    'td': 'config-unset -u {url:host} content.headers.user_agent',
}
for a, b in bind.items():
    config.bind(a, b)
