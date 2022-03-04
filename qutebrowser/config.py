config.load_autoconfig(False)
config.source('adblock.py')
config.source('color.py')
config.source('bindings.py')
config.source('javascript.py')
config.source('redirects.py')

import subprocess
subprocess.run(["sass", config.configdir / 'user.scss', config.configdir / 'user.css'])

c.url.default_page = 'feedly.com/i/my'
c.url.start_pages = 'covid19.rpi.edu/dailycheckin'
c.url.searchengines['y'] = 'vid.puffyan.us/search?q={}'

c.url.open_base_url = True
c.content.fullscreen.window = True
c.colors.webpage.darkmode.enabled = True

c.tabs.show = 'multiple'
c.confirm_quit = ['downloads']
c.qt.force_platformtheme = 'gtk2'
c.content.user_stylesheets = 'user.css'
c.content.cookies.accept = 'no-3rdparty'
c.colors.webpage.preferred_color_scheme = 'dark'
c.colors.webpage.darkmode.policy.images = 'never'

c.aliases['re'] = 'restart'
c.aliases['mpv'] = 'spawn -mdv mpv --ytdl-raw-options=sub-lang=en'
c.aliases['css-reload'] = 'set content.user_stylesheets user.css'
c.aliases['scss-reload'] = 'spawn -u /bin/sh -c "sass $QUTE_CONFIG_DIR/user.{s,}css"'
c.aliases['remove-sticky'] = 'jseval -q document.querySelectorAll("*").forEach(e=>{["sticky","fixed"].includes(getComputedStyle(e).position)&&e.parentNode.removeChild(e)})'
c.aliases['toggle-dark'] = 'reload;;jseval -q const meta=document.createElement("meta");meta.name="color-scheme";document.head.appendChild(meta).content="dark";;stop'

config.set('content.notifications.enabled', True, 'https://mail.tutanota.com')
config.set('content.register_protocol_handler', True, 'https://mail.tutanota.com')

import socket
if socket.gethostname() == 'wheatley':
    c.zoom.default = 125
