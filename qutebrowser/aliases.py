a=c.aliases
a['re'] = 'restart'
a['css-reload'] = 'set content.user_stylesheets user.css'
a['scss-reload'] = 'spawn -u /bin/bash -c "sassc $QUTE_CONFIG_DIR/user.{s,}css"'
a['remove-sticky'] = 'jseval -q document.querySelectorAll("*").forEach(e=>{["sticky","fixed"].includes(getComputedStyle(e).position)&&e.parentNode.removeChild(e)})'
a['toggle-dark'] = 'reload;;jseval -q const meta=document.createElement("meta");meta.name="color-scheme";document.head.appendChild(meta).content="dark";;stop'
a['shutup'] = 'jseval -q document.head.appendChild(document.createElement("style")).innerHTML="@import url(https://rickyromero.com/shutup/updates/shutup.css)"'
a['monolith-save'] = 'spawn kitty fish -c "monolith {url} -o'

a['ao3-first']  = 'jseval -q window.location.href=document.getElementsByTagName(\'option\')[0].value'
a['ao3-latest'] = 'jseval -q c=document.getElementsByTagName(\'option\'); window.location.href = c[c.length-1].value'
