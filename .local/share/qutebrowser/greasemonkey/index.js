// ==UserScript==
// @name         Mangadex HQ Covers
// @version      0.7
// @description  try to take over the world!
// @author       AviKav
// @match        https://*.mangadex.org
// @match        https://*.mangadex.org/titles
// @match        https://*.mangadex.org/search
// @match        https://*.mangadex.org/featured
// @match        https://*.mangadex.org/follows/manga*
// @match        https://*.mangadex.org/quick_search
// @grant        none
// @run-at document-end
// ==/UserScript==

(function () {
    'use strict';
    const thumbnailUrlSubstrings = ['.thumb', '.large'];
    const imageExtensions = ['.jpg', '.jpeg', '.png', '.gif']; // Order in which to check for images

    let tags = document.getElementsByTagName('img');
    // let oldtags = tags;

    for (let tag of tags) {
        let originalImageUrl = tag.src;

        if (!(originalImageUrl.includes(thumbnailUrlSubstrings[0]) || // Yeah, I'm too lazy to iterate through the array, `break` the inner loop, and `continue1 the outer loop.
            originalImageUrl.includes(thumbnailUrlSubstrings[1]))) {
            continue;
        }
        console.log(tag)

        // I can't regex
        let cutUrl = originalImageUrl.replace('https://mangadex.org/images/manga/', '');
        let seriesID = cutUrl.split('.')[0];
        let partialUrl = 'https://mangadex.org/images/manga/' + seriesID;
        (async () => {
            for (let extension of imageExtensions) {
                let potentialImageUrl = partialUrl + extension;
                let response = await fetch(potentialImageUrl, { method: 'HEAD' });
                if (response.ok) {
                    tag.src = potentialImageUrl;
                    return;
                }
            }
        })();
    }
})();
