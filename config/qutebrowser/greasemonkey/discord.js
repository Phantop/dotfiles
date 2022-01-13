// ==UserScript==
// @name          DisClear
// @homepage      https://github.com/birb-naise/discord-simple-clear
// @include       https://*.discord.com/*
// ==/UserScript==
document.head.appendChild(document.createElement('style')).innerHTML=`
.theme-dark, .theme-light {
    --background-primary: transparent;
    --background-secondary: transparent;
    --background-secondary-alt: transparent;
    --background-tertiary: transparent;
    --background-floating: rgba(0, 0, 0, .6);
    --channeltextarea-background: transparent;
    --font-primary: "Ubuntu Mono";
}

.container-2cd8Mz, .searchBar-3TnChZ, .listItemWrapper-3d87LP,
[aria-label="Help"], [aria-label="Inbox"], [aria-label="Send a gift"],
[href="/store"], [href="/channels/@me"] {display: none}

body {background: url(
"https://cdn.discordapp.com/attachments/773556458234052608/929383713932992512/0dKbZO5-16-9.webp"
)}`
