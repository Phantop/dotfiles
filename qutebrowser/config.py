config.load_autoconfig(False)

c.confirm_quit = ['downloads']
c.qt.workarounds.remove_service_workers = True

config.source('adblock.py')
config.source('bindings.py')
config.source('redirects.py')
config.source('search.py')
config.source('sites.py')
config.source('theme.py')
