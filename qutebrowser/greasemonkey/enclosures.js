// ==UserScript==
// @name          EnclosureExpand
// @include       https://minifocs.fly.dev/*/entry/*
// @include       https://minifocs.fly.dev/share/*
// ==/UserScript==
const details = document.querySelector("details.entry-enclosures");
details.setAttribute("open", "");
