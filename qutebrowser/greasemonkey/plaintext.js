// ==UserScript==
// @name          PlainText
// @description   Makes links in plain text one-click to open
// @include       *.txt
// @include       *.xml
// ==/UserScript==
const rss = document.querySelector('rss');

if (rss) {
    for (const link of document.querySelectorAll('link')) {
        link.addEventListener('click', function() { window.open(this.textContent); });
        link.style = 'text-decorator: underline;';
    }
}
else {
    const text = document.body.innerText;

    const regexpLinks = /http[s]?:\/\/[^;, \n\t]*/
    const regexpLinksAll = /http[s]?:\/\/[^;, \n\t]*/g
    const links = [...text.matchAll(regexpLinksAll)]
    const pieces = text.split(regexpLinks)
    const combined = pieces.reduce((acc, text, index) => { acc.push(text); links[index] && acc.push(links[index]); return acc; }, [])

    const newText = '<pre>' +
        combined
        .map((piece) => {
            if (!regexpLinks.test(piece)) {
                return piece;
            }
            return `<a target="_blank" href="${piece}">${piece}</a>`;
        })
        .join('')
        + '</pre>';
    document.body.innerHTML = newText;
}
