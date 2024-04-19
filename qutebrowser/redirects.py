from qutebrowser.api import interceptor
from urllib.parse import urljoin
from PyQt6.QtCore import QUrl
import operator

o = operator.methodcaller
s = 'setHost'

def farside(url: QUrl, i) -> bool:
    url.setHost('farside.link')
    p = url.path().strip('/')
    url.setPath(urljoin(i, p))
    return True

def twitter(url: QUrl) -> bool:
    return farside(url, '/nitter/')
def imgur(url: QUrl) -> bool:
    return farside(url, '/rimgo/')
def medium(url: QUrl) -> bool:
    return farside(url, '/scribe/')
def youtube(url: QUrl) -> bool:
    return farside(url, '/invidious/')
def reddit(url: QUrl) -> bool:
    return farside(url, '/libreddit/')
def instagram(url: QUrl) -> bool:
    return farside(url, '/proxigram/')
def translate(url: QUrl) -> bool:
    return farside(url, '/simplytranslate/')
def tiktok(url: QUrl) -> bool:
    return farside(url, '/proxitok/')
def quora (url: QUrl) -> bool:
    return farside(url, '/querte/')
def fandom(url: QUrl) -> bool:
    return farside(url, '/breezewiki/')
def genius(url: QUrl) -> bool:
    return farside(url, '/dumb/')
def stackoverflow (url: QUrl) -> bool:
    return farside(url, '/anonymousoverflow/')
def wikipedia(url: QUrl) -> bool:
    return farside(url, '/wikiless/')
def github(url: QUrl) -> bool:
    return farside(url, '/gothub/')

#twitter = o(s, 'unrollnow.com')

m = {
        "reddit.com": reddit,
        "www.reddit.com": reddit,
        "old.reddit.com": reddit,

        "youtu.be": youtube,
        "youtube.com": youtube,
        "www.youtube.com": youtube,
        "music.youtube.com": youtube,

        "twitter.com": twitter,
        "mobile.twitter.com": twitter,
        "x.com": twitter,

        "imgur.com" : imgur,
        "medium.com" : medium,
        "www.instagram.com": instagram,
        "translate.google.com" : translate,
        "vm.tiktok.com" : tiktok,
        "www.tiktok.com" : tiktok,
        "www.quora.com": quora,
        "fandom.com": fandom,
        "www.fandom.com": fandom,
        "genius.com" : genius,
        "stackoverflow.com" : stackoverflow,
        "en.wikipedia.org" : wikipedia,
        "gothub.com" : github,

        "www.twitch.tv" : o(s, 'twineo.exozy.me'),
        "discord.com" : o(s, 'canary.discord.com'),
        "tumblr.com" : o(s, 'tumblash.fly.dev'),
        "www.tumblr.com" : o(s, 'priviblur.fly.dev'),
        "www.npr.org" : o(s, 'text.npr.org'),
        "www.goodreads.com" : o(s, 'bl.vern.cc'),
        "zelda.fandom.com" : o(s, 'zeldawiki.wiki'),
        "avatar.wiki" : o(s, 'avatar.antifandom.com'),
        "news.ycombinator.com" : o(s, 'news.workers.tools'),
        "www.pixiv.net" : o(s, 'pixivfe.exozy.me'),
        }
def rewrite(info: interceptor.Request):
    if (info.resource_type != interceptor.ResourceType.main_frame or
            info.request_url.scheme() in {"data", "blob"}):
        return
    url = info.request_url
    redir = m.get(url.host())
    if redir is not None and redir(url) is not False:
        info.redirect(url)
interceptor.register(rewrite)
