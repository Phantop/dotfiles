invid = 'invidious.fdn.fr'
nittr = 'nitter.snopyta.org'

# bindings
config.bind('<Ctrl-q>', 'close')
config.bind('<Ctrl-w>', 'tab-close')

config.bind('sd', 'spawn -u downloads')
config.bind('<Ctrl-r>', 'spawn -u readability')

c.aliases['mpv'] = "spawn -m -d -v mpv --ytdl-raw-options=write-sub=,write-auto-sub=,embed-subs=,sub-lang=en}"
config.bind('<Ctrl-m>', 'mpv {url}')
config.bind('<Ctrl-Shift-M>', 'mpv --ytdl-format=bestvideo[vcodec^=avc1]+bestaudio {url}')

config.bind('sq', 'open qr {url}')
config.bind('sa', 'open https://archive.is/?run=1&url={url}')
config.bind('sw', 'open https://conifer.rhizome.org/record/{url}')

c.aliases['dotepub'] = "open javascript:(function()%7Btry%7Bvar%20d=document,w=window;if(!d.body%7C%7Cd.body.innerHTML=='')throw(0);var%20s=d.createElement('link'),h=d.getElementsByTagName('head')[0],i=d.createElement('div'),j=d.createElement('script');s.rel='stylesheet';s.href='//dotepub.com/s/dotEPUB-favlet.css';s.type='text/css';s.media='screen';h.appendChild(s);i.setAttribute('id','dotepub');i.innerHTML='%3Cdiv%20id=%22status%22%3E%3Cp%3EConversion%20in%20progress...%3C/p%3E%3C/div%3E';d.body.appendChild(i);j.type='text/javascript';j.charset='utf-8';j.src='//dotepub.com/j/dotepub.js?v=1.2&s=ask&t=epub&g=en';h.appendChild(j);%7Dcatch(e)%7Bw.alert('The%20page%20has%20no%20content%20or%20it%20is%20not%20fully%20loaded.%20Please,%20wait%20till%20the%20page%20is%20loaded.');%7D%7D)();"
config.bind('se', "dotepub")
c.aliases['remove-sticky'] = "open javascript:(function()%7B%20let%20i%2C%20elements%20%3D%20document.querySelectorAll('body%20*')%3B%20for%20(i%20%3D%200%3B%20i%20%3C%20elements.length%3B%20i%2B%2B)%20%7B%20if(getComputedStyle(elements%5Bi%5D).position%20%3D%3D%3D%20'fixed'%20%7C%7C%20getComputedStyle(elements%5Bi%5D).position%20%3D%3D%3D%20'sticky')%7B%20elements%5Bi%5D.parentNode.removeChild(elements%5Bi%5D)%3B%20%7D%20%7D%20%7D)()"
config.bind('sr', "remove-sticky")

config.bind('st', 'config-cycle -t content.proxy socks://localhost:9050/ system')
config.bind('sca', 'config-cycle -t content.user_stylesheets "[normalize/normalize.css, adapta.css]" normalize/normalize.css')

# BEGIN MAIN CONFIGURATION #
c.url.default_page = "https://feedly.com/i/my"
c.url.start_pages  = ["https://duckduckgo.com/?q=20m+timer"]
c.url.searchengines = {"DEFAULT": "duckduckgo.com/?q={}", "y": invid + "/search?q={}"}

c.completion.open_categories = ["quickmarks", "bookmarks", "history"]
c.tabs.show = "multiple"
c.fonts.default_size = "9pt"
c.colors.webpage.prefers_color_scheme_dark = True
c.content.fullscreen.window = True
c.qt.force_platformtheme = "gtk2"

c.editor.command = ["nvim", "-f", "{file}", "-c", "normal {line}G{column0}l"]
c.content.cookies.accept = "no-3rdparty"
c.input.insert_mode.auto_leave = False
c.downloads.location.prompt = False
c.url.open_base_url = True
c.tabs.background = True
c.content.dns_prefetch = True
c.confirm_quit = ["downloads"]

c.content.user_stylesheets = ["normalize/normalize.css"]

c.content.host_blocking.lists.append("https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts")
c.content.host_blocking.lists.append("https://github.com/adversarialtools/apple-telemetry/raw/master/blacklist")
c.content.host_blocking.lists.append("https://raw.githubusercontent.com/jmdugan/blocklists/master/corporations/facebook/all")
c.content.host_blocking.lists.append("https://raw.githubusercontent.com/jmdugan/blocklists/master/corporations/microsoft/all")
c.content.host_blocking.lists.append("https://github.com/Perflyst/PiHoleBlocklist/raw/master/AmazonFireTV.txt")

guicol = '#222D32'
accent = '#5294E2'

c.colors.completion.category.bg                 = guicol
c.colors.completion.scrollbar.bg                = guicol
c.colors.downloads.bar.bg                       = guicol
c.colors.prompts.bg                             = guicol
c.colors.statusbar.command.bg                   = guicol
c.colors.statusbar.command.private.bg           = guicol
c.colors.statusbar.normal.bg                    = guicol
c.colors.statusbar.private.bg                   = guicol
c.colors.tabs.bar.bg                            = guicol
c.colors.tabs.even.bg                           = guicol
c.colors.tabs.odd.bg                            = guicol
c.colors.tabs.pinned.even.bg                    = guicol
c.colors.tabs.pinned.odd.bg                     = guicol
c.colors.tabs.selected.even.fg                  = 'black'
c.colors.tabs.selected.odd.fg                   = 'black'
c.colors.tabs.pinned.selected.even.fg           = 'black'
c.colors.tabs.pinned.selected.odd.fg            = 'black'

c.colors.hints.bg                               = 'rgba(0, 226, 255, 0.8)'
c.hints.border                                  = '1px solid #00A5BA'

c.colors.tabs.selected.even.bg                  = accent
c.colors.tabs.selected.odd.bg                   = accent
c.colors.tabs.pinned.selected.even.bg           = accent
c.colors.tabs.pinned.selected.odd.bg            = accent
c.colors.completion.even.bg                     = '#29353B'
c.colors.completion.odd.bg                      = '#243035'
c.colors.completion.item.selected.bg            = accent
c.colors.completion.item.selected.border.top    = accent
c.colors.completion.item.selected.border.bottom = accent
c.colors.completion.match.fg                    = accent
c.colors.completion.scrollbar.fg                = accent

config.set('content.register_protocol_handler', True, 'https://mail.tutanota.com')
config.set('content.desktop_capture', True, 'https://discord.com')
config.set('content.persistent_storage', True, 'https://mega.nz')
config.set('content.javascript.enabled', False, 'https://twitter.com')
config.set('content.register_protocol_handler', False, 'https://mail.google.com?extsrc=mailto&url=%25s')

# redirects
from qutebrowser.api import interceptor
import operator, typing
REDIRECT_MAP = {
	"reddit.com": operator.methodcaller('setHost', 'old.reddit.com'),
	"www.reddit.com": operator.methodcaller('setHost', 'old.reddit.com'),
	"twitter.com": operator.methodcaller('setHost', nittr),
	"api.twitter.com": operator.methodcaller('setHost', nittr),
	"platform.twitter.com": operator.methodcaller('setHost', nittr),
	"www.platform.twitter.com": operator.methodcaller('setHost', nittr),
	"t.co": operator.methodcaller('setHost', nittr),
	"mobile.twitter.com": operator.methodcaller('setHost', nittr),
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
