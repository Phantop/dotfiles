// ==UserScript==
// @name            BetterTTV
// @namespace       BTTV
// @description     Enhances Twitch with new features, emotes, and more.
// @copyright       NightDev, LLC
// @icon            https://cdn.betterttv.net/assets/logos/bttv_logo.png
//
// @grant           none
//
// @include         *://*.twitch.tv/*
//
// @version         0.0.2
// ==/UserScript==

(function betterttv() {
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://cdn.betterttv.net/betterttv.js';
    var head = document.getElementsByTagName('head')[0];
    if (!head) return;
    head.appendChild(script);
})()
