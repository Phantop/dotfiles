config.load_autoconfig(False)
config.source('adblock.py')
config.source('aliases.py')
config.source('color.py')
config.source('bindings.py')
config.source('javascript.py')
config.source('redirects.py')

c.url.start_pages = c.url.default_page = 'megafocs.herokuapp.com'
config.set('content.javascript.enabled', True, c.url.start_pages)
c.url.searchengines['DEFAULT'] = 'farside.link/searxng/search?q={}'
c.url.searchengines['y'] = 'farside.link/invidious/search?q={}'
c.url.searchengines['t'] = 'ao3.org/tags/{}'
c.url.searchengines['!'] = 'duckduckgo.com/?q=!{}'

c.tabs.show = 'multiple'
c.confirm_quit = ['downloads']
c.qt.force_platformtheme = 'gtk2'
c.content.fullscreen.window = True
c.content.user_stylesheets = 'user.css'
c.content.cookies.accept = 'no-3rdparty'
c.colors.webpage.darkmode.enabled = True
c.content.proxy = 'http://localhost:8118'
c.colors.webpage.preferred_color_scheme = 'dark'
c.colors.webpage.darkmode.policy.images = 'never'
c.completion.open_categories = ["bookmarks","history"]

import socket
if socket.gethostname() == 'wheatley':
    c.zoom.default = 125
