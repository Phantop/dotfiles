// ==UserScript==
// @name            Hacker Blues
// @include         https://news.ycombinator.com/*
// ==/UserScript==
document.head.appendChild(document.createElement('style')).innerHTML=`
body  {
    background: #2b3033 !important;
    color: #f0ffff !important;
}
body > center > table[width="85%"] {
    background: #212121 !important;
    box-shadow:  0px 0px 30px 3px rgba(0, 0, 0, 0.2) !important;
}
td[bgcolor="#ff6600"] {
    background: linear-gradient(to top, #45515b 0%, #4b5762 100%) !important;
}`
document.body.style.zoom=1.15;
