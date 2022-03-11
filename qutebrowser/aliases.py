a=c.aliases
a['re'] = 'restart'
a['mpv'] = 'spawn -mdv mpv --ytdl-raw-options=sub-lang=en'
a['css-reload'] = 'set content.user_stylesheets user.css'
a['scss-reload'] = 'spawn -u /bin/sh -c "sass $QUTE_CONFIG_DIR/user.{s,}css"'
a['remove-sticky'] = 'jseval -q document.querySelectorAll("*").forEach(e=>{["sticky","fixed"].includes(getComputedStyle(e).position)&&e.parentNode.removeChild(e)})'
a['toggle-dark'] = 'reload;;jseval -q const meta=document.createElement("meta");meta.name="color-scheme";document.head.appendChild(meta).content="dark";;stop'
a['shutup'] = 'jseval -q document.head.appendChild(document.createElement("style")).innerHTML="@import url(https://rickyromero.com/shutup/updates/shutup.css)"'
