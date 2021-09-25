// ==UserScript==
// @name          Discord Simple Clear
// @namespace     https://github.com/birb-naise
// @description	  Simple CSS for customizable background and bg opacity. Popular discord styles usually don't work/get abandoned for some reason ??? so I made this one which should be easy to update.
// @author        birb-naise
// @homepage      https://github.com/birb-naise/discord-simple-clear
// @include       http://discord.com/*
// @include       https://discord.com/*
// @include       http://*.discord.com/*
// @include       https://*.discord.com/*
// @run-at        document-start
// @version       8148fe3
// ==/UserScript==

(function IIFE() {
	'use strict';

	document.addEventListener('readystatechange', function onReadyStateChange() {
		if (document.readyState == 'interactive') {
			const style = document.createElement('style');
			document.head.appendChild(style);
			style.innerHTML = `

body {
    background: url("https://cdn.discordapp.com/attachments/610991459323084801/625107142092783616/moon3.png");
    background-size: cover;
}

.header-2o-2hj, /*remove borders*/
.searchBar-6Kv8R2,
.content-yTz4x3::before {
    box-shadow: none !important;
}

.container-1D34oG,  /*friends list*/
.scrollbar-2rkZSL,  /*scrollbar*/
.pad-29zQak,
.track-1JN30G {
    background: transparent !important;
}

/* ------SCROLLBAR------ */
.scrollbar-2rkZSL {
    width: 8px;
}
.thumb-2JwNFC {
    background: rgba(0, 0, 0, .5) !important;
}
.track-1JN30G,
.thumb-2JwNFC {
    border: none !important;
}

/* ------EMBEDDED TEXT------ */
.embedProvider-3k5pfl,
.embedDescription-1Cuq9a,
.embedFields-2IPs5Z,
.embedAuthorName-3mnTWj,
.embedFooterText-28V_Wb {
    color: #f2f2f2 !important;
}

.appMount-3lHmkl {
    background: rgba(0, 0, 0, .6);
}

/* ------REMOVE GREY/WHITE BG COLORS------ */
.theme-dark,
.theme-light {
    --header-primary: #fff;
    --header-secondary: #b9bbbe;
    --text-normal: #dcddde;
    --text-muted: #9d9d9d;
    --channels-default: #8e9297;
    --interactive-normal: #b9bbbe;
    --interactive-hover: #dcddde;
    --interactive-active: #fff;
    --interactive-muted: #4f545c;
    --background-primary: transparent;
    --background-secondary: transparent;
    --background-secondary-alt: transparent;
    --background-tertiary: transparent;
    --background-floating: rgba(0, 0, 0, .8);
    --channeltextarea-background: transparent;
    --deprecated-panel-background: transparent;
    --background-modifier-hover: rgba(0, 0, 0, .42);
    --background-modifier-selected: rgba(0, 0, 0, .45);
}

/* ------POP-UP------ */
.modal-yWgWj-,
.footer-3rDWdC {
    background: rgba(0, 0, 0, .5) !important;
}

/* -----UNREAD BADGE DARKMODE FIX----- */
.item-2hkk8m {
    background-color: #ccc;
}

.unread-2lAfLh {
    background-color: #ccc;
}
			`;
		}
	});
})();
