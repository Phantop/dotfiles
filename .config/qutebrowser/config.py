invid = 'invidious.fdn.fr'
nittr = 'nitter.snopyta.org'

# BEGIN MAIN CONFIGURATION #
c.url.default_page = "https://feedly.com/i/my"
c.url.start_pages  = ["https://duck.com/?q=20m+timer"]
c.url.searchengines['y'] = "localhost" + "/search?q={}"

c.completion.open_categories = ["quickmarks", "bookmarks", "history"]
c.tabs.show = "multiple"
c.fonts.default_size = "9pt"
c.content.fullscreen.window = True
c.qt.force_platformtheme = "gtk2"

c.content.cookies.accept = "no-3rdparty"
c.input.insert_mode.auto_leave = False
c.downloads.location.prompt = False
c.url.open_base_url = True
c.tabs.background = True
c.content.dns_prefetch = True
c.confirm_quit = ["downloads"]
c.scrolling.smooth = True

hosts = c.content.host_blocking.lists
hosts.append("https://github.com/jmdugan/blocklists/raw/master/corporations/facebook/all-but-whatsapp")
hosts.append("https://github.com/jmdugan/blocklists/raw/master/corporations/microsoft/all")
hosts.append("https://github.com/jmdugan/blocklists/raw/master/corporations/twitter/all")
hosts.append("https://github.com/Perflyst/PiHoleBlocklist/raw/master/AmazonFireTV.txt")

config.set('content.register_protocol_handler', True, 'https://mail.tutanota.com')
config.set('content.notifications', True, 'https://mail.tutanota.com')
config.set('content.register_protocol_handler', False, 'https://mail.google.com?extsrc=mailto&url=%25s')
config.set('content.desktop_capture', True, 'https://discord.com')
config.set('content.media.audio_capture', True, 'https://discord.com')
config.set('content.persistent_storage', True, 'https://mega.nz')

# BINDINGS #
config.bind('<Ctrl-q>', 'close')
config.bind('<Ctrl-w>', 'tab-close')
config.bind('c1', "download-open")
config.bind('sd', "spawn fish -c 'dl; open (ls | rofi -dmenu -b -i || exit 0)'")

c.aliases['mpv'] = "spawn -m -d -v mpv --ytdl-raw-options=write-sub=,write-auto-sub=,embed-subs=,sub-lang=en}"
config.bind('m', 'mpv {url}')
config.bind('M', 'mpv --ytdl-format=bestvideo[vcodec^=avc1]+bestaudio {url}')
config.bind(';m', 'hint links run mpv {hint-url}')
config.bind(',', 'hint links run mpv {hint-url}')

config.bind('sq', 'open qr {url}')
config.bind('sa', 'open https://archive.is/?run=1&url={url}')
config.bind('sw', 'open https://conifer.rhizome.org/record/{url}')
config.bind('se', 'open https://dotepub.com/converter/?url={url}&fmt=epub')

c.aliases['remove-sticky'] = 'jseval -q !function(){var e,o=document.querySelectorAll("body *");for(e=0;e<o.length;e++)["sticky","fixed"].includes(getComputedStyle(o[e]).position)&&o[e].parentNode.removeChild(o[e])}();'
config.bind('sr', 'remove-sticky')
config.bind('<Ctrl-r>', 'spawn -u /usr/bin/env python3 /usr/share/qutebrowser/userscripts/readability')
config.bind('<Ctrl-Shift-R>', "spawn kitty rdrview -B qutebrowser {url}")

config.bind('st', 'config-cycle -t content.proxy socks://localhost:9050/ system')
config.bind('sc', 'config-cycle -t content.user_stylesheets adapta.css ""')

# APPEARANCE #
guicol = '#222D32'
accent = '#5294E2'

cc  = c.colors
cct = cc.tabs
ccc = cc.completion
ccw = cc.webpage

ccwd = ccw.darkmode
ccw.prefers_color_scheme_dark = True
ccwd.enabled = False

ccc.category.bg                 = guicol
ccc.scrollbar.bg                = guicol
cc.downloads.bar.bg             = guicol
cc.prompts.bg                   = guicol
cc.statusbar.command.bg         = guicol
cc.statusbar.command.private.bg = guicol
cc.statusbar.normal.bg          = guicol
cc.statusbar.private.bg         = guicol
cct.bar.bg                      = guicol
cct.even.bg                     = guicol
cct.odd.bg                      = guicol
cct.pinned.even.bg              = guicol
cct.pinned.odd.bg               = guicol

cct.selected.even.fg            = 'black'
cct.selected.odd.fg             = 'black'
cct.pinned.selected.even.fg     = 'black'
cct.pinned.selected.odd.fg      = 'black'

cc.hints.bg                     = 'rgba(0, 226, 255, 0.8)'
c.hints.border                  = '1px solid #00A5BA'

cct.selected.even.bg            = accent
cct.selected.odd.bg             = accent
cct.pinned.selected.even.bg     = accent
cct.pinned.selected.odd.bg      = accent
ccc.even.bg                     = '#29353B'
ccc.odd.bg                      = '#243035'
ccc.item.selected.bg            = accent
ccc.item.selected.border.top    = accent
ccc.item.selected.border.bottom = accent
ccc.match.fg                    = accent
ccc.scrollbar.fg                = accent

# REDIRECTS #
from qutebrowser.api import interceptor
import operator, typing
REDIRECT_MAP = {
	"reddit.com": operator.methodcaller('setHost', 'teddit.net'),
	"www.reddit.com": operator.methodcaller('setHost', 'teddit.net'),
	"twitter.com": operator.methodcaller('setHost', nittr),
	"api.twitter.com": operator.methodcaller('setHost', nittr),
	"platform.twitter.com": operator.methodcaller('setHost', nittr),
	"www.platform.twitter.com": operator.methodcaller('setHost', nittr),
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

# DRACULA #
#import dracula.draw
#dracula.draw.blood(c, {
#    'spacing': {
#        'vertical': 1,
#        'horizontal': 0
#    }
#})
