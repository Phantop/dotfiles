// ==UserScript==
// @name    ao3 download buttons
// @description Adds download buttons to each work blurb on AO3's works index pages.
// @namespace   ao3
// @include     http*://archiveofourown.org/*works*
// @include     http*://archiveofourown.org/series/*
// @include     http*://archiveofourown.org/users/*/bookmarks*
// @include     http*://archiveofourown.org/users/*/readings*
// @grant       none
// @version     2.0
// ==/UserScript==

(function () {
  const blurbs = Array.from(document.querySelectorAll('li.blurb'));

  if (!blurbs.length) {
    return;
  }

  const style = document.createElement('style');

  style.innerHTML = `
    .blurb .download.actions {
      position: absolute;
      right: 7em;
      top: 0.5em;
      white-space: nowrap;
    }

    .blurb .download .expandable {
      position: absolute;
      right: calc(100% + 0.5em);
      top: -0.5em;
    }

    .blurb .download .expandable li {
      display: inline-block;
      margin: 0;
    }
  `;

  document.head.appendChild(style);

  blurbs.forEach(blurb => {

    const titleLink = blurb.querySelector('.header.module .heading a');
    const title = titleLink.textContent.trim();
    const workId = titleLink.href
      .match(/\/works\/(\d+)\b/)[1];
    const formats = ['azw3', 'epub', 'mobi', 'pdf', 'html'];
    const tuples = formats
      .map(ext => [
        ext.toUpperCase(),
        `/downloads/${workId}/${encodeURIComponent(title)}.${ext}?updated_at=${Date.now()}`
      ]);

    blurb.innerHTML += `
      <div class="download actions" aria-haspopup="true">
        <a href="#" class="collapsed">Download</a>
        <ul class="expandable secondary hidden">
          ${
            tuples.map(([label, href]) => `
              <li>
                <a href=${href}>
                  ${label}
                </a>
              </li>
            `)
            .join('')
          }
        </ul>
      </div>
    `;

    blurb.querySelector('.download.actions > a').addEventListener('click', ev => {
      const button = ev.currentTarget;

      button.classList.toggle('collapsed');
      button.classList.toggle('expanded');
      button.parentNode
        .querySelector('.expandable')
        .classList.toggle('hidden');

      ev.preventDefault();
    });
  });
})();
