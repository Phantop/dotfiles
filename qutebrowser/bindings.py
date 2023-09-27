a=c.aliases
a['re'] = 'restart'
a['css-reload'] = 'set content.user_stylesheets user.css'
a['scss-reload'] = 'spawn -u /bin/bash -c "sass $QUTE_CONFIG_DIR/user.{s,}css"'
a['remove-sticky'] = 'jseval -q document.querySelectorAll("*").forEach(e=>{["sticky","fixed"].includes(getComputedStyle(e).position)&&e.parentNode.removeChild(e)})'
a['toggle-dark'] = 'reload;;jseval -q const meta=document.createElement("meta");meta.name="color-scheme";document.head.appendChild(meta).content="dark";;stop'
a['monolith-save'] = 'spawn kitty fish -c "monolith {url} -o'

a['ao3-first']  = 'jseval -q window.location = document.getElementsByTagName("option")[0].value'
a['ao3-last'] = 'jseval -q c=document.getElementsByTagName("option"); window.location = c[c.length-1].value'
a['ao3-next'] = 'jseval -q window.location = document.getElementsByClassName("next")[0].children[0]'
a['ao3-prev'] = 'jseval -q window.location = document.getElementsByClassName("previous")[0].children[0]'
a['scrib-next'] = 'jseval -q window.location = document.getElementsByClassName("btn-next")[0]'
a['scrib-prev'] = 'jseval -q window.location = document.getElementsByClassName("btn-prev")[0]'

kitdl = 'spawn kitty fish -c "dl &&'
bind = {
    '<Ctrl-q>': 'history-clear -f ;; close',
    '<Ctrl-w>': 'tab-close',
    '<Alt+f>' : 'config-cycle hints.chars qwerasdf asdfghjkl',

    '<Ctrl-Shift-x>': 'ao3-first',
    '<Ctrl-Shift-a>': 'ao3-last',
    'A': 'ao3-next',
    'X': 'ao3-prev',
    '<Alt+A>': 'scrib-next',
    '<Alt+X>': 'scrib-prev',

    'm': 'spawn -mdv mpv {url}',
    ',': 'hint links run spawn -mdv mpv {hint-url}',
    ';a': 'hint links run ' + kitdl + ' dl {hint-url}"',
    ';v': 'hint links run ' + kitdl + ' ydl {hint-url}"',
    'aa': kitdl + ' dl {url}"',
    'av': kitdl + ' ydl {url}"',

    '<Ctrl-r>': 'spawn -u readability',
    'e': 'config-cycle -p -u *://*.{url:host}/* content.javascript.enabled ;; reload',
    'E': 'config-cycle -p content.javascript.enabled ;; reload',
    's1': 'download-open',
    'sa': 'open -t archive.is/submit/?url={url}',
    'sb': 'open splashblr.fly.dev/?u={url}',
    'sc': 'toggle-dark',
    'sd': "spawn fish -c 'dl; open (ls -a | rofi -dmenu -b -i || exit 0)'",
    'sg': 'debug-dump-page ~/Downloads/dump.html',
    'sm': 'monolith-save ~/Downloads/dump.html"',
    'sp': 'open morty.ononoki.org/?mortyurl={url}',
    'sq': 'spawn -u qr',
    'sr': 'remove-sticky',
    'st': 'config-cycle -p content.proxy socks://localhost:9050 ' + c.content.proxy,
    'T' : 'tab-next',
    'td': 'config-unset -u {url:host} content.headers.user_agent',
    'W': 'config-cycle -p -u *://*.{url:host}/* content.cookies.accept no-3rdparty all never',
    '<Alt+w>': 'config-cycle -p content.cookies.accept no-3rdparty never',
}
for a, b in bind.items():
    config.bind(a, b)
