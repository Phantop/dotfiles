c.content.cookies.accept = "never"
c.content.javascript.enabled = False
c.content.notifications.enabled = False
c.content.register_protocol_handler = False
c.url.start_pages = c.url.default_page = 'minifocs.fly.dev'
sites = [
        'archiveofourown.org',
        'canary.discord.com',
        'app.tuta.com',
        c.url.default_page,

        '*.rpi.edu',
        '*.albany.edu',
        'api-3e0243bb.duosecurity.com',
        'api-71fc1511.duosecurity.com',
        ]
for site in sites:
    config.set('content.javascript.enabled', True, 'https://' + site)
    config.set('content.cookies.accept', 'no-3rdparty', 'https://' + site)

config.set('content.headers.user_agent', 'iPhone', 'docs.google.com')
config.set('content.headers.user_agent', 'iPhone', 'drive.google.com')
config.set('colors.webpage.darkmode.enabled', False, 'canary.discord.com')
