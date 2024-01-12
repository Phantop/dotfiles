config.load_autoconfig(False)
c.content.fullscreen.window = True
c.content.user_stylesheets = ['adblock.css', 'dracula.css', 'user.css']

c.confirm_quit = ['downloads']
c.downloads.location.directory = '~/Downloads'
c.qt.workarounds.remove_service_workers = True

c.url.searchengines['!'] = 'farside.link/librey/search.php?q=!{}'
c.url.searchengines['4'] = 'farside.link/4get/web?s={}'
c.url.searchengines['a'] = 'annas-archive.org/search?q={}'
c.url.searchengines['l'] = 'farside.link/librey/search.php?q={}'
c.url.searchengines['m'] = 'https://search.marginalia.nu/search?query={}'
c.url.searchengines['s'] = 'farside.link/searxng/search?q={}'
c.url.searchengines['x'] = 'aldeid.com/wiki/X86-assembly/Instructions/{}'
c.url.searchengines['y'] = 'farside.link/invidious/search?q={}'
c.url.searchengines['z'] = 'zeldawiki.wiki/wiki/{}'
c.url.searchengines['DEFAULT'] = c.url.searchengines['s']
c.url.start_pages = c.url.default_page = 'minifocs.fly.dev'

config.source('adblock.py')
config.source('bindings.py')
config.source('redirects.py')
config.source('sites.py')
config.source('theme.py')
