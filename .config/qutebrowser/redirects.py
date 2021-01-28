invid = 'invidious.fdn.fr'
nitter = 'nitter.snopyta.org'
reddit = 'teddit.net'

from qutebrowser.api import interceptor
import operator, typing
REDIRECT_MAP = {
	"reddit.com": operator.methodcaller('setHost', reddit),
	"www.reddit.com": operator.methodcaller('setHost', reddit),
	"old.reddit.com": operator.methodcaller('setHost', reddit),
	"twitter.com": operator.methodcaller('setHost', nitter),
	"api.twitter.com": operator.methodcaller('setHost', nitter),
	"platform.twitter.com": operator.methodcaller('setHost', nitter),
	"www.platform.twitter.com": operator.methodcaller('setHost', nitter),
	"mobile.twitter.com": operator.methodcaller('setHost', nitter),
	"www.youtube.com": operator.methodcaller('setHost', invid),
	"youtube.com": operator.methodcaller('setHost', invid),
	"youtu.be": operator.methodcaller('setHost', invid),
	"www.instagram.com": operator.methodcaller('setHost', 'bibliogram.snopyta.org'),
}
def int_fn(info: interceptor.Request):
	"""Block the given request if necessary."""
	if (info.resource_type != interceptor.ResourceType.main_frame or
			info.request_url.scheme() in {"data", "blob"}):
		return
	url = info.request_url
	redir = REDIRECT_MAP.get(url.host())
	if redir is not None and redir(url) is not False:
		info.redirect(url)
interceptor.register(int_fn)
