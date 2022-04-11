config.load_autoconfig(False)

import socket
if socket.gethostname() == 'wheatley':
    c.zoom.default = 125

c.content.fullscreen.window = True
c.content.proxy = 'http://localhost:8118'
c.content.user_stylesheets = 'user.css'

c.confirm_quit = ['downloads']
c.downloads.location.directory = '~/Downloads'
c.qt.workarounds.remove_service_workers = True

c.url.searchengines['DEFAULT'] = 'farside.link/searxng/search?q={}'
c.url.searchengines['y'] = 'farside.link/invidious/search?q={}'
c.url.searchengines['t'] = 'ao3.org/tags/{}'
c.url.searchengines['!'] = 'duckduckgo.com/?q=!{}'
c.url.start_pages = c.url.default_page = 'megafocs.herokuapp.com'

config.source('adblock.py')
config.source('bindings.py')
config.source('redirects.py')
config.source('sites.py')
config.source('theme.py')
