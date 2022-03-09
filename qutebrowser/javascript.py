c.content.javascript.enabled = False
sites = [
        'canary.discord.com',
        'duckduckgo.com',
        'mail.tutanota.com',
        '*.rpi.edu',
        'api-3e0243bb.duosecurity.com',
        ]
for site in sites:
    config.set('content.javascript.enabled', True, 'https://' + site)

config.set('content.headers.user_agent', 'iPhone', 'docs.google.com')
config.set('content.headers.user_agent', 'iPhone', 'drive.google.com')
