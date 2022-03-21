c.content.javascript.enabled = False
sites = [
        'canary.discord.com',
        'mail.tutanota.com',
        '*.rpi.edu',
        'api-3e0243bb.duosecurity.com',
        ]
for site in sites:
    config.set('content.javascript.enabled', True, 'https://' + site)

config.set('content.headers.user_agent', 'iPhone', 'docs.google.com')
config.set('content.headers.user_agent', 'iPhone', 'drive.google.com')

config.set('content.notifications.enabled', True, 'https://mail.tutanota.com')
config.set('content.register_protocol_handler', True, 'https://mail.tutanota.com')
