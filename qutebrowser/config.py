import platform

config.load_autoconfig(False)
config.source('adblock.py')
config.source('bindings.py')
config.source('search.py')
config.source('theme.py')
config.source('ui.py')

if platform.system() != 'Darwin':
    config.source('redirects.py')
    config.source('sites.py')
else:
    config.source('arista.py')
