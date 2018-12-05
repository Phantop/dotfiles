// ==UserScript==
// @name            Google Drive Direct Links
// @version         1.8
// @description     Direct link functionality for Google Drive
// @author          Drazen Bjelovuk
// @match           *://drive.google.com/*
// @grant           none
// @namespace       https://greasyfork.org/users/11679
// @contributionURL https://goo.gl/dYIygm
// ==/UserScript==

var observer = new MutationObserver(function(mutations) {

    mutations.forEach(function(mutation) {
        for (var i = 0; i < mutation.addedNodes.length; i++) {
            var node = mutation.addedNodes[i];

            if (node.dataset.target === 'linkBubble') {
                var link = node.getElementsByTagName('input')[0];
                var directLink = link.cloneNode(true);
                directLink.classList.remove('H-qa-A-zt');
                directLink.value = 'https://drive.google.com/uc?id='+ node.previousSibling.dataset.id;
                directLink.onclick = function() { this.select(); };
                var label = document.createElement('p');
                label.style.cssText = "margin-top: 0px; margin-bottom: 0px;";
                label.textContent = 'Direct link:';
                link.parentNode.insertBefore(directLink, link.nextSibling);
                link.parentNode.insertBefore(label, link.nextSibling);
                break;
            }
            else
                setClickEvent(node);
        }
    });
});
var content = document.getElementById('drive_main_page');
if (content)
    observer.observe(content, { childList: true, subtree: true });

function setClickEvent(elem) {
    if (elem.classList && (elem.classList.contains('a-u-xb-j') || elem.classList.contains('a-t-J')))
        elem.addEventListener('contextmenu', adjustMenu);
    else {
        for (var i = 0; i < elem.children.length; i++)
            setClickEvent(elem.children[i]);
    }
}

function adjustMenu() {
    var file = this;

    setTimeout(function() {
        var menus = document.getElementsByClassName('h-w');

        for (var i = 0; i < menus.length; i++) {
            var menu = menus[i];
            if (menu.style.display !== 'none') {
                var existing = document.getElementById('DLID');
                if (existing)
                    existing.remove();

                var container = menu.children[0];
                var clone = container.children[0].cloneNode(true);
                clone.id = 'DLID';
				clone.style.display = 'block';
				clone.className = 'h-v';
                clone.getElementsByClassName('a-v-T')[0].innerHTML = 'Open direct';

                clone.onmouseleave = clone.onmouseenter = function() {
                    this.classList.toggle('h-v-pc');
                };
                clone.onclick = function() {
                    window.open('https://drive.google.com/uc?id='+ file.dataset.id);
                };

                container.insertBefore(clone, container.children[1]);
                break;
            }
        }
    });
}