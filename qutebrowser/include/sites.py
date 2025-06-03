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
        ]
for site in sites:
    config.set('content.cookies.accept', 'no-3rdparty', 'https://' + site)
    config.set('content.javascript.enabled', True, 'https://' + site)

config.set('content.cookies.accept', 'all', 'file:///*')
config.set('content.javascript.enabled', True, 'file:///*')
config.set('content.headers.user_agent', 'iPhone', 'docs.google.com')
config.set('content.headers.user_agent', 'iPhone', 'drive.google.com')
config.set('colors.webpage.darkmode.enabled', False, 'canary.discord.com')
