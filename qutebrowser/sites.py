c.content.cookies.accept = "never"
c.content.javascript.enabled = False
c.content.notifications.enabled = False
c.content.register_protocol_handler = False
sites = [
        'archiveofourown.org',
        'canary.discord.com',
        '*.tutanota.com',
        'megafocs.herokuapp.com',

        '*.rpi.edu',
        'api-3e0243bb.duosecurity.com',
        ]
for site in sites:
    config.set('content.javascript.enabled', True, 'https://' + site)
    config.set('content.cookies.accept', 'no-3rdparty', 'https://' + site)

config.set('content.headers.user_agent', 'iPhone', 'docs.google.com')
config.set('content.headers.user_agent', 'iPhone', 'drive.google.com')
