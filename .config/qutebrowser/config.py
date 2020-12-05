invid = 'invidious.fdn.fr'
nittr = 'nitter.snopyta.org'

# BEGIN MAIN CONFIGURATION #
c.url.default_page = "https://feedly.com/i/my"
c.url.start_pages  = ["https://duck.com/?q=20m+timer"]
c.url.searchengines = {"DEFAULT": "duck.com/?q={}", "y": "localhost:3000" + "/search?q={}"}

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
hosts.append("https://raw.githubusercontent.com/jmdugan/blocklists/master/corporations/facebook/all")
hosts.append("https://raw.githubusercontent.com/jmdugan/blocklists/master/corporations/microsoft/all")
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

c.aliases['mpv'] = "spawn -m -d -v mpv --ytdl-raw-options=write-sub=,write-auto-sub=,embed-subs=,sub-lang=en}"
config.bind('<Ctrl-m>', 'mpv {url}')
config.bind('<Ctrl-Shift-M>', 'mpv --ytdl-format=bestvideo[vcodec^=avc1]+bestaudio {url}')
config.bind('<,>', 'hint links run mpv {hint-url}')

config.bind('sq', 'open qr {url}')
config.bind('sa', 'open https://archive.is/?run=1&url={url}')
config.bind('sw', 'open https://conifer.rhizome.org/record/{url}')

c.aliases['dotepub'] = "jseval -u -q javascript:(function()%7Btry%7Bvar%20d=document,w=window;if(!d.body%7C%7Cd.body.innerHTML=='')throw(0);var%20s=d.createElement('link'),h=d.getElementsByTagName('head')[0],i=d.createElement('div'),j=d.createElement('script');s.rel='stylesheet';s.href='//dotepub.com/s/dotEPUB-favlet.css';s.type='text/css';s.media='screen';h.appendChild(s);i.setAttribute('id','dotepub');i.innerHTML='%3Cdiv%20id=%22status%22%3E%3Cp%3EConversion%20in%20progress...%3C/p%3E%3C/div%3E';d.body.appendChild(i);j.type='text/javascript';j.charset='utf-8';j.src='//dotepub.com/j/dotepub.js?v=1.2&s=ask&t=epub&g=en';h.appendChild(j);%7Dcatch(e)%7Bw.alert('The%20page%20has%20no%20content%20or%20it%20is%20not%20fully%20loaded.%20Please,%20wait%20till%20the%20page%20is%20loaded.');%7D%7D)();"
config.bind('se', "dotepub")
c.aliases['remove-sticky'] = "jseval -u -q javascript:(function()%7B%20let%20i%2C%20elements%20%3D%20document.querySelectorAll('body%20*')%3B%20for%20(i%20%3D%200%3B%20i%20%3C%20elements.length%3B%20i%2B%2B)%20%7B%20if(getComputedStyle(elements%5Bi%5D).position%20%3D%3D%3D%20'fixed'%20%7C%7C%20getComputedStyle(elements%5Bi%5D).position%20%3D%3D%3D%20'sticky')%7B%20elements%5Bi%5D.parentNode.removeChild(elements%5Bi%5D)%3B%20%7D%20%7D%20%7D)()"
config.bind('sr', "remove-sticky")
config.bind('<Ctrl-r>', 'spawn -u readability')

config.bind('st', 'config-cycle -t content.proxy socks://localhost:9050/ system')
config.bind('sc', 'config-cycle -t content.user_stylesheets adapta.css ""')
config.bind('sd', "spawn fish -c 'xdg-open ~/Downloads/(ls ~/Downloads | rofi -location 6 -dmenu -i || exit 0)'")


# APPEARANCE #
guicol = '#222D32'
accent = '#5294E2'

cc  = c.colors
cct = cc.tabs
ccc = cc.completion

cc.webpage.prefers_color_scheme_dark = True

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
