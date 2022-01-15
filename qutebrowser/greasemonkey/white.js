// ==UserScript==
// @match 
// @match https://archiveofourown.org/*
// @match https://canary.discord.com/*
// @match https://drop.lol/*
// @match https://mail.tutanota.com/*
// @match https://teddit.net/*
// ==/UserScript==
const meta = document.createElement('meta');
meta.name = "color-scheme";
meta.content = "dark light";
document.head.appendChild(meta);
