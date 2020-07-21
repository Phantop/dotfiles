config.load_autoconfig()

# Youtube adblock
from qutebrowser.api import interceptor
def filter_yt(info: interceptor.Request):
    """Block the given request if necessary."""
    url = info.request_url
    if (url.host() == 'www.youtube.com' and
        url.path() == '/get_video_info' and
            '&adformat=' in url.query()):
        info.block()
interceptor.register(filter_yt)

# bindings
config.bind('<Ctrl-m>', 'spawn -m -d -v mpv {url}')
config.bind('<Ctrl-q>', 'close')
config.bind('<Ctrl-w>', 'tab-close')
config.bind('<Ctrl-r>', 'spawn -u readability')

config.bind('sa', 'open https://archive.is/?run=1&url={url}')
config.bind('sq', 'open qr {url}')
config.bind('sw', 'open https://conifer.rhizome.org/record/{url}')
config.bind('sx', 'spawn -u nitterize')
config.bind('xd', 'spawn -u unitter')
config.bind('sw', 'spawn -u focusmode')
config.bind('se', "open javascript:(function()%7Btry%7Bvar%20d=document,w=window;if(!d.body%7C%7Cd.body.innerHTML=='')throw(0);var%20s=d.createElement('link'),h=d.getElementsByTagName('head')[0],i=d.createElement('div'),j=d.createElement('script');s.rel='stylesheet';s.href='//dotepub.com/s/dotEPUB-favlet.css';s.type='text/css';s.media='screen';h.appendChild(s);i.setAttribute('id','dotepub');i.innerHTML='%3Cdiv%20id=%22status%22%3E%3Cp%3EConversion%20in%20progress...%3C/p%3E%3C/div%3E';d.body.appendChild(i);j.type='text/javascript';j.charset='utf-8';j.src='//dotepub.com/j/dotepub.js?v=1.2&s=ask&t=epub&g=en';h.appendChild(j);%7Dcatch(e)%7Bw.alert('The%20page%20has%20no%20content%20or%20it%20is%20not%20fully%20loaded.%20Please,%20wait%20till%20the%20page%20is%20loaded.');%7D%7D)();")

config.bind('sca', 'spawn -u switchadapta')
config.bind('sd', 'spawn -u downloads')
config.bind('st', 'spawn -u switchtor')

