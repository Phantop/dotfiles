config.load_autoconfig(False)
c.content.fullscreen.window = True
c.content.user_stylesheets = ['adblock.css', 'dracula.css', 'user.css']

c.confirm_quit = ['downloads']
c.downloads.location.directory = '~/Downloads'
c.qt.workarounds.remove_service_workers = True

c.url.searchengines['l'] = 'lx.vern.cc/search.php?q={}'
c.url.searchengines['m'] = 'morty.ononoki.org/?mortyurl={}'
c.url.searchengines['s'] = 'farside.link/searxng/search?q={}'
c.url.searchengines['y'] = 'farside.link/invidious/search?q={}'
c.url.searchengines['a'] = 'annas-archive.org/search?q={}'
c.url.searchengines['DEFAULT'] = c.url.searchengines['l']
c.url.start_pages = c.url.default_page = 'minifocs.fly.dev'

config.source('adblock.py')
config.source('bindings.py')
config.source('redirects.py')
config.source('sites.py')
config.source('theme.py')
