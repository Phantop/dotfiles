from qutebrowser.api import interceptor
import operator

invid = 'vid.puffyan.us'
nitter = 'nitter.snopyta.org'
reddit = 'teddit.net'

o = operator.methodcaller
s = 'setHost'
i = interceptor

MAP = {
        "reddit.com": o(s, reddit),
        "www.reddit.com": o(s, reddit),
        "old.reddit.com": o(s, reddit),

        "twitter.com": o(s, nitter),
        "mobile.twitter.com": o(s, nitter),

        "youtu.be": o(s, invid),
        "youtube.com": o(s, invid),
        "www.youtube.com": o(s, invid),

        "www.instagram.com": o(s, 'bibliogram.art'),
        "www.amazon.com": o(s, 'smile.amazon.com'),
        "imgur.com" : o(s, 'imgin.voidnet.tech'),
        "medium.com" : o(s, 'scribe.rip'),
        "www.twitch.tv" : o(s, 'm.twitch.tv'),
        "discord.com" : o(s, 'canary.discord.com')
    }
def f(info: i.Request):
    if (info.resource_type != i.ResourceType.main_frame or
            info.request_url.scheme() in {"data", "blob"}):
        return
    url = info.request_url
    redir = MAP.get(url.host())
    if redir is not None and redir(url) is not False:
        info.redirect(url)
i.register(f)
