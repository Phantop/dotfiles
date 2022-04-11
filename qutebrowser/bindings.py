a=c.aliases
a['re'] = 'restart'
a['profile'] = 'spawn qutebrowser-profile'
a['css-reload'] = 'set content.user_stylesheets user.css'
a['scss-reload'] = 'spawn -u /bin/bash -c "sassc $QUTE_CONFIG_DIR/user.{s,}css"'
a['remove-sticky'] = 'jseval -q document.querySelectorAll("*").forEach(e=>{["sticky","fixed"].includes(getComputedStyle(e).position)&&e.parentNode.removeChild(e)})'
a['toggle-dark'] = 'reload;;jseval -q const meta=document.createElement("meta");meta.name="color-scheme";document.head.appendChild(meta).content="dark";;stop'
a['shutup'] = 'jseval -q document.head.appendChild(document.createElement("style")).innerHTML="@import url(https://rickyromero.com/shutup/updates/shutup.css)"'
a['monolith-save'] = 'spawn kitty fish -c "monolith {url} -o'

a['ao3-first']  = 'jseval -q window.location.href=document.getElementsByTagName(\'option\')[0].value'
a['ao3-latest'] = 'jseval -q c=document.getElementsByTagName(\'option\'); window.location.href = c[c.length-1].value'

kitdl = 'spawn kitty fish -c "dl &&'
bind = {
    '<Ctrl-q>': 'close',
    '<Ctrl-r>': 'spawn -u readability',
    '<Ctrl-w>': 'tab-close',
    '<Ctrl-Shift-a>': 'ao3-first',
    '<Ctrl-Shift-x>': 'ao3-latest',
    '<Alt+f>' : 'config-cycle hints.chars qwerasdf asdfghjkl',
    ',': 'hint links run spawn -mdv mpv {hint-url}',
    ';a': 'hint links run ' + kitdl + ' dl {hint-url}"',
    ';v': 'hint links run ' + kitdl + ' ydl {hint-url}"',
    'aa': kitdl + ' dl {url}"',
    'av': kitdl + ' ydl {url}"',
    'e': 'config-cycle -p -u *://*.{url:host}/* content.javascript.enabled ;; reload',
    'E': 'config-cycle -p content.javascript.enabled ;; reload',
    'm': 'spawn -mdv mpv {url}',
    's1': 'download-open',
    'sa': 'open -t archive.is/submit/?url={url}',
    'sc': 'toggle-dark',
    'sd': "spawn fish -c 'dl; open (ls -a | rofi -dmenu -b -i || exit 0)'",
    'sg': 'debug-dump-page ~/Downloads/dump.html',
    'sm': 'monolith-save ~/Downloads/dump.html"',
    'sq': 'spawn -u qr',
    'sr': 'remove-sticky',
    'st': 'config-cycle -p content.proxy socks://localhost:9050 ' + c.content.proxy,
    'T' : 'tab-next',
    'td': 'config-unset -u {url:host} content.headers.user_agent',
    'W': 'config-cycle -p -u *://*.{url:host}/* content.cookies.accept no-3rdparty never',
}
for a, b in bind.items():
    config.bind(a, b)
