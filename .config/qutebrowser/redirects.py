invid = 'invidiou.site'
nitter = 'nitter.snopyta.org'
reddit = 'teddit.net'

from qutebrowser.api import interceptor
import operator, typing
o = operator.methodcaller
s = 'setHost'
MAP = {
	"reddit.com": o(s, reddit),
	"www.reddit.com": o(s, reddit),
	"old.reddit.com": o(s, reddit),

	"twitter.com": o(s, nitter),
	"api.twitter.com": o(s, nitter),
	"mobile.twitter.com": o(s, nitter),
	"platform.twitter.com": o(s, nitter),
	"www.platform.twitter.com": o(s, nitter),

	"youtu.be": o(s, invid),
	"youtube.com": o(s, invid),
	"www.youtube.com": o(s, invid),

	"www.instagram.com": o(s, 'bibliogram.art'),
        "www.amazon.com": o(s, 'smile.amazon.com'),
}
def int_fn(info: interceptor.Request):
	if (info.resource_type != interceptor.ResourceType.main_frame or
			info.request_url.scheme() in {"data", "blob"}):
		return
	url = info.request_url
	redir = MAP.get(url.host())
	if redir is not None and redir(url) is not False:
		info.redirect(url)
interceptor.register(int_fn)
