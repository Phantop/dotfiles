from qutebrowser.api import interceptor
from PyQt6.QtCore import QUrl

redirs = {
    'avatar.wiki' : 'avatar.antifandom.com',
    'portal.wiki' : 'theportalwiki.com',
    'siivagunner.fandom.com' : 'siivagunner.wiki',
    'tardis.fandom.com' : 'tardis.wiki',
    'zelda.fandom.com' : 'zelda.wiki',
    'zelda.wiki' : 'zeldawiki.wiki',

    'news.ycombinator.com' : 'news.workers.tools',
    'www.npr.org' : 'text.npr.org',
    # 'www.youtube.com' : youtube,
}
farside = [
    'fandom.com',
    'genius.com',
    'gothub.com',
    'imgur.com',
    'instagram.com',
    'medium.com',
    'quora.com',
    'reddit.com',
    'stackoverflow.com',
    'tiktok.com',
    'translate.google.com',
    'twitter.com',
]

def youtube(info: interceptor.Request, url: QUrl):
    if "watch?v=" in url.toString():
        url.setHost('youtube.ttools.io')
        info.redirect(url)

def rewrite(info: interceptor.Request):
    url = info.request_url
    host = url.host()
    base = '.'.join(host.split('.')[-2:])

    redir = redirs.get(host)

    if redir is not None:
        if isinstance(redir, str):
            url.setHost(redir)
            info.redirect(url)
        redir(info, url)
    elif host in farside or base in farside:
        surl = url.toString()
        url.setHost('farside.link')
        url.setPath('/' + surl)
        info.redirect(url)

interceptor.register(rewrite)
