c.content.javascript.enabled = False
sites = [
        'canary.discord.com',
        'drive.google.com',
        'duckduckgo.com',
        'feedly.com',
        'mail.tutanota.com',

        '*.rpi.edu',
        'api-3e0243bb.duosecurity.com',
        ]
for site in sites:
    config.set('content.javascript.enabled', True, 'https://' + site)

config.set('content.headers.user_agent', 'iPhone', 'docs.google.com')
