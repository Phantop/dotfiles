// ==UserScript==
// @name          Discord Simple Clear
// @namespace     http://userstyles.org
// @description	  Simple CSS for customizable background and bg opacity. Popular discord styles usually don't work/get abandoned for some reason ??? so I made this one which should be easy to update.
// @author        birb-naise
// @homepage      https://userstyles.org/styles/175085
// @include       http://discordapp.com/*
// @include       https://discordapp.com/*
// @include       http://*.discordapp.com/*
// @include       https://*.discordapp.com/*
// @run-at        document-start
// @version       0.20190921052211
// ==/UserScript==
(function() {var css = [
	"/* ------BACKGROUND------ */",
	"body {",
	"    background: url(\"https://cdn.discordapp.com/attachments/610991459323084801/625107142092783616/moon3.png\");",
	"    background-size: cover;",
	"}",
	".appMount-3lHmkl {",
	"    background: rgba(0, 0, 0, .6);",
	"}",
	"",
	"/* ------REMOVE GREY/WHITE BG COLORS------ */",
	".theme-dark,",
	".theme-light {",
	"    --header-primary: #fff;",
	"    --header-secondary: #b9bbbe;",
	"    --text-normal: #dcddde;",
	"    --text-muted: #9d9d9d;",
	"    --channels-default: #8e9297;",
	"    --interactive-normal: #b9bbbe;",
	"    --interactive-hover: #dcddde;",
	"    --interactive-active: #fff;",
	"    --interactive-muted: #4f545c;",
	"    --background-primary: transparent;",
	"    --background-secondary: transparent;",
	"    --background-tertiary: transparent;",
	"    --background-accent: transparent;",
	"    --background-floating: rgba(0, 0, 0, .8);",
	"    --channeltextarea-background: transparent;",
	"    --activity-card-background: transparent;",
	"    --deprecated-panel-background: transparent;",
	"}",
	"",
	"/*remove borders*/",
	".container-1r6BKw,",
	".header-2o-2hj,",
	".searchBar-6Kv8R2 {",
	"    box-shadow: none !important;",
	"}",
	"",
	"/*misc*/",
	".container-3gCOGc,  /*friends list*/",
	".wrapper-3WhCwL,    /*mentions*/",
	".scrollbar-2rkZSL,  /*scrollbar*/",
	".pad-29zQak,",
	".track-1JN30G {",
	"    background: transparent !important;",
	"}",
	"",
	"/* ------SCROLLBAR------ */",
	".scrollbar-2rkZSL {",
	"    width: 8px;",
	"}",
	".thumb-2JwNFC {",
	"    background: rgba(0, 0, 0, .5) !important;",
	"}",
	".track-1JN30G,",
	".thumb-2JwNFC {",
	"    border: none !important;",
	"}",
	"",
	"/* ------EMBEDDED TEXT------ */",
	".embedProvider-3k5pfl,",
	".embedDescription-1Cuq9a,",
	".embedFields-2IPs5Z,",
	".embedAuthorName-3mnTWj,",
	".embedFooterText-28V_Wb {",
	"    color: #f2f2f2 !important;",
	"}",
	"",
	"/* ------POP-UP------ */",
	".modal-yWgWj-,",
	".footer-3rDWdC {",
	"    background: rgba(0, 0, 0, .5) !important;",
	"}"
].join("\n");
if (typeof GM_addStyle != "undefined") {
	GM_addStyle(css);
} else if (typeof PRO_addStyle != "undefined") {
	PRO_addStyle(css);
} else if (typeof addStyle != "undefined") {
	addStyle(css);
} else {
	var node = document.createElement("style");
	node.type = "text/css";
	node.appendChild(document.createTextNode(css));
	var heads = document.getElementsByTagName("head");
	if (heads.length > 0) {
		heads[0].appendChild(node);
	} else {
		// no head yet, stick it whereever
		document.documentElement.appendChild(node);
	}
}
})();
