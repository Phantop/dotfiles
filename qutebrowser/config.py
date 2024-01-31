config.load_autoconfig(False)
c.content.fullscreen.window = True
c.content.user_stylesheets = ['adblock.css', 'dracula.css', 'user.css']

c.confirm_quit = ['downloads']
c.qt.workarounds.remove_service_workers = True
c.url.start_pages = c.url.default_page = 'minifocs.fly.dev'

config.source('adblock.py')
config.source('bindings.py')
config.source('redirects.py')
config.source('search.py')
config.source('sites.py')
config.source('theme.py')
