from qutebrowser.api import interceptor
from urllib.parse import urljoin
from PyQt5.QtCore import QUrl
import operator

o = operator.methodcaller
s = 'setHost'
i = interceptor

def farside(url: QUrl, i) -> bool:
    url.setHost('farside.link')
    p = url.path().strip('/')
    url.setPath(urljoin(i, p))
    return True

def nitter(url: QUrl) -> bool:
    return farside(url, '/nitter/')
def rimgo(url: QUrl) -> bool:
    return farside(url, '/rimgo/')
def scribe(url: QUrl) -> bool:
    return farside(url, '/scribe/')
def wikiless(url: QUrl) -> bool:
    return farside(url, '/wikiless/')
def invid(url: QUrl) -> bool:
    return farside(url, '/invidious/')
def reddit(url: QUrl) -> bool:
    return farside(url, '/libreddit/')
def bibliogram(url: QUrl) -> bool:
    return farside(url, '/bibliogram/')
def simplytranslate(url: QUrl) -> bool:
    return farside(url, '/simplytranslate/')

MAP = {
        "reddit.com": reddit,
        "www.reddit.com": reddit,
        "old.reddit.com": reddit,

        "youtu.be": invid,
        "youtube.com": invid,
        "www.youtube.com": invid,

        "twitter.com": nitter,
        "mobile.twitter.com": nitter,

        "imgur.com" : rimgo,
        "medium.com" : scribe,
        "en.wikipedia.org" : wikiless,
        "www.instagram.com": bibliogram,
        "translate.google.com" : simplytranslate,

        "www.twitch.tv" : o(s, 'm.twitch.tv'),
        "discord.com" : o(s, 'canary.discord.com'),
        "vm.tiktok.com" : o(s, 'proxitok.herokuapp.com'),
        "tumblr.com" : o(s, 'splashblr.herokuapp.com'),
        "www.npr.org" : o(s, 'text.npr.org'),
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
