config.load_autoconfig(False)
config.source('adblock.py')
config.source('aliases.py')
config.source('color.py')
config.source('bindings.py')
config.source('javascript.py')
config.source('redirects.py')

import subprocess
subprocess.run(["sass", config.configdir / 'user.scss', config.configdir / 'user.css'])

c.url.start_pages = c.url.default_page = 'fast-headland-67505.herokuapp.com'
config.set('content.javascript.enabled', True, c.url.start_pages)
c.url.searchengines['y'] = 'farside.link/invidious/search?q={}'

c.tabs.show = 'multiple'
c.confirm_quit = ['downloads']
c.qt.force_platformtheme = 'gtk2'
c.content.fullscreen.window = True
c.content.user_stylesheets = 'user.css'
c.content.cookies.accept = 'no-3rdparty'
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = 'dark'
c.colors.webpage.darkmode.policy.images = 'never'

config.set('content.notifications.enabled', True, 'https://mail.tutanota.com')
config.set('content.register_protocol_handler', True, 'https://mail.tutanota.com')

import socket
if socket.gethostname() == 'wheatley':
    c.zoom.default = 125
