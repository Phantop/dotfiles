// ==UserScript==
// @name            BetterTTV
// @namespace       BTTV
// @description     Enhances Twitch with new features, emotes, and more.
// @copyright       NightDev, LLC
// @icon            https://cdn.betterttv.net/assets/logos/bttv_logo.png
// @grant           none
// @include         *://*.twitch.tv/*
// @version         0.0.2
// ==/UserScript==

!function () {
    var t = document.createElement("script");
    t.type = "text/javascript",
    t.src = "https://cdn.betterttv.net/betterttv.js";
    var e = document.getElementsByTagName("head")[0];
    e && e.appendChild(t)
}();
