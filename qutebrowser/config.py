config.load_autoconfig(False)

import socket
if socket.gethostname() == 'wheatley':
    c.zoom.default = 125

c.content.fullscreen.window = True
c.content.user_stylesheets = ['adblock.css', 'dracula.css', 'user.css']

c.confirm_quit = ['downloads']
c.downloads.location.directory = '~/Downloads'
c.qt.workarounds.remove_service_workers = True

c.url.searchengines['l'] = 'librex.catalyst.sx/search.php?q={}'
c.url.searchengines['m'] = 'morty.ononoki.org/?mortyurl={}'
c.url.searchengines['s'] = 'farside.link/searxng/search?q={}'
c.url.searchengines['y'] = 'farside.link/invidious/search?q={}'
c.url.searchengines['DEFAULT'] = c.url.searchengines['l']
c.url.start_pages = c.url.default_page = 'megafocs.fly.dev'

config.source('adblock.py')
config.source('bindings.py')
config.source('redirects.py')
config.source('sites.py')
config.source('theme.py')
