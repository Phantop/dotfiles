// ==UserScript==
// @name          EnclosureExpand
// @include       https://minifocs.fly.dev/*
// ==/UserScript==
const details = document.querySelector("details.entry-enclosures");
details.setAttribute("open", "");
