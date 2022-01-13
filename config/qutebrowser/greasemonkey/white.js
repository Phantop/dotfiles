// ==UserScript==
// @match 
// @match https://*.discord.com/*
// @match https://mail.tutanota.com/*
// @match https://teddit.net/*
// @match https://archiveofourown.org/*
// @match https://drop.lol/*
// ==/UserScript==
const meta = document.createElement('meta');
meta.name = "color-scheme";
meta.content = "dark light";
document.head.appendChild(meta);
