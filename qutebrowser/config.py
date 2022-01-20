config.load_autoconfig(False)
config.source('config/adapta.py')
config.source('config/adblock.py')
config.source('config/bindings.py')
config.source('config/redirects.py')

c.url.default_page = 'feedly.com/i/my'
c.url.start_pages = 'covid19.rpi.edu/dailycheckin'
c.url.searchengines['y'] = 'vid.puffyan.us/search?q={}'

c.url.open_base_url = True
c.content.fullscreen.window = True
c.colors.webpage.darkmode.enabled = True

c.tabs.show = 'multiple'
c.confirm_quit = ['downloads']
c.qt.force_platformtheme = 'gtk2'
c.content.cookies.accept = 'no-3rdparty'
c.colors.webpage.preferred_color_scheme = 'dark'
c.colors.webpage.darkmode.policy.images = 'never'

c.aliases['re'] = 'restart'
c.aliases['mpv'] = 'spawn -mdv mpv --ytdl-raw-options=sub-lang=en'
c.aliases['remove-sticky'] = 'jseval -q document.querySelectorAll("*").forEach(e=>{["sticky","fixed"].includes(getComputedStyle(e).position)&&e.parentNode.removeChild(e)})'
c.aliases['toggle-dark'] = 'reload;; jseval -qf ~/.config/qutebrowser/greasemonkey/white.js;; stop'

config.set('content.notifications.enabled', True, 'https://mail.tutanota.com')
config.set('content.register_protocol_handler', True, 'https://mail.tutanota.com')

import socket
if socket.gethostname() == 'wheatley':
    c.zoom.default = 125
    c.qt.force_software_rendering = 'chromium'

#import dracula.draw
#dracula.draw.blood(c, {'spacing': {'vertical': 1,'horizontal': 0}})
