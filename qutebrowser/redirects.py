from qutebrowser.api import interceptor
from PyQt6.QtCore import QUrl

basic = {
    'tumblr.com' : 'priviblur.fly.dev',
    'www.tumblr.com' : 'priviblur.fly.dev',

    'avatar.wiki' : 'avatar.antifandom.com',
    'portal.wiki' : 'theportalwiki.com',
    'tardis.fandom.com' : 'tardis.wiki',
    'zelda.fandom.com' : 'zeldawiki.wiki',

    'discord.com' : 'canary.discord.com',
    'news.ycombinator.com' : 'news.workers.tools',
    'www.goodreads.com' : 'bl.vern.cc',
    'www.npr.org' : 'text.npr.org',
    'www.pixiv.net' : 'pixivfe.exozy.me',
    'www.twitch.tv' : 'twineo.exozy.me',
}
farside = {
    'old.reddit.com': 'redlib',
    'reddit.com': 'redlib',
    'www.reddit.com': 'redlib',

    'mobile.twitter.com': 'nitter',
    'twitter.com': 'nitter',
    'x.com': 'nitter',

    'vm.tiktok.com' : 'proxitok',
    'www.tiktok.com' : 'proxitok',

    'en.wikipedia.org' : 'wikiless',
    'genius.com' : 'dumb',
    'gothub.com' : 'gothub',
    'imgur.com' : 'rimgo',
    'medium.com' : 'scribe',
    'stackoverflow.com' : 'anonymousoverflow',
    'translate.google.com' : 'simplytranslate',
    'www.instagram.com': 'proxigram',
    'www.quora.com': 'querte',
}

def dosub(url: QUrl, host, sub):
    url.setHost(host)
    url.setPath('/' + sub + url.path())
def fandom(url: QUrl, sub):
    dosub(url, 'farside.link', 'breezewiki/' + sub)
def tumblr(url: QUrl, sub):
    dosub(url, 'priviblur.fly.dev', sub)

subs = {
    'fandom.com' : fandom,
    'tumblr.com' : tumblr,
}

def youtube(info: interceptor.Request, url: QUrl):
    url = url.toString()
    nurl = url.replace("watch?v=", "embed/")

    if nurl != url:
        info.redirect(QUrl(nurl))

custom = {
    'www.youtube.com' : youtube,
}

def rewrite(info: interceptor.Request):
    url = info.request_url
    host = url.host()
    base = '.'.join(host.split('.')[-2:])

    bredir = basic.get(host)
    fredir = farside.get(host)
    sredir = subs.get(base)
    credir = custom.get(host)

    if bredir is not None:
        url.setHost(bredir)
        info.redirect(url)
    elif fredir is not None:
        url.setHost('farside.link')
        url.setPath('/' + fredir + url.path())
        info.redirect(url)
    elif sredir is not None:
        sub = host.split('.')[0]
        sredir(url, sub)
        info.redirect(url)
    elif credir is not None:
        credir(info, url)

interceptor.register(rewrite)
