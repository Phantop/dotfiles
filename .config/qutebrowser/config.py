config.load_autoconfig(False)
config.source('adapta.py')
config.source('bindings.py')
config.source('redirects.py')

c.url.default_page = "feedly.com/i/my"
c.url.start_pages  = ["duck.com/?q=20m timer"]
c.url.searchengines['y'] = "localhost/search?q={}"

c.content.fullscreen.window = True
c.downloads.location.prompt = False
c.input.insert_mode.auto_leave = False
c.scrolling.smooth = True
c.url.open_base_url = True

c.completion.open_categories = ["quickmarks", "bookmarks", "history"]
c.confirm_quit = ["downloads"]
c.content.cookies.accept = "no-3rdparty"
c.fonts.default_size = "9pt"
c.qt.args += ["enable-gpu-rasterization"]
c.qt.force_platformtheme = "gtk2"
c.tabs.show = "multiple"

ccw = c.colors.webpage
ccwd = ccw.darkmode
ccwd.enabled = True
ccwd.policy.images = 'never'
ccw.prefers_color_scheme_dark = True

mpv = 'spawn -m -d -v mpv --ytdl-raw-options=write-sub=,write-auto-sub=,embed-subs=,sub-lang=en'
c.aliases['mpv'] = mpv
c.aliases['mpv4'] = mpv + ' --ytdl-format=bestvideo[vcodec^=avc1]+bestaudio'
c.aliases['remove-sticky'] = 'jseval -q !function(){var e,o=document.querySelectorAll("body *");for(e=0;e<o.length;e++)["sticky","fixed"].includes(getComputedStyle(o[e]).position)&&o[e].parentNode.removeChild(o[e])}();'

c.content.blocking.method = "both"
hosts = c.content.blocking.hosts.lists
hosts.append("https://github.com/Perflyst/PiHoleBlocklist/raw/master/AmazonFireTV.txt")
hosts.append("https://github.com/jmdugan/blocklists/raw/master/corporations/twitter/all")
hosts.append("https://github.com/jmdugan/blocklists/raw/master/corporations/microsoft/all")
hosts.append("https://github.com/jmdugan/blocklists/raw/master/corporations/facebook/all-but-whatsapp")

config.set('content.persistent_storage', True, 'https://mega.nz')
config.set('content.desktop_capture', True, 'https://discord.com')
config.set('content.media.audio_capture', True, 'https://discord.com')
config.set('content.notifications', True, 'https://mail.tutanota.com')
config.set('content.register_protocol_handler', True, 'https://mail.tutanota.com')
config.set('content.register_protocol_handler', False, 'https://mail.google.com?extsrc=mailto&url=%25s')

#import dracula.draw
#dracula.draw.blood(c, {'spacing': {'vertical': 1,'horizontal': 0}})
