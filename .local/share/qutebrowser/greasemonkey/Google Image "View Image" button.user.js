// ==UserScript==
// @name           Google Image "View Image" button
// @version        0.1.2
// @description    Add "View Image" button.
// @description:ru Добавляет кнопку просмотра изображения.
// @author         gvvad
// @run-at         document-end
// @include        http*://www.google.*.*/*
// @include        http*://google.*.*/*
// @include        http*://www.google.*/*
// @include        http*://google.*/*
// @grant          none
// @license        GPL-3.0+; http://www.gnu.org/licenses/gpl-3.0.txt
// @namespace      https://greasyfork.org/users/100160
// ==/UserScript==

(function() {
    'use strict';

    let observer = new MutationObserver(function(mRecord) {
        for (let mutation of mRecord) {
            try {
                //"table.irc_but_r" - image preview area, 3 count should be
                let ar_table = document.querySelectorAll("table.irc_but_r");
                for (let table of ar_table) {
                    try {
                        let tr = table.querySelector("tr");
                        let td = table.querySelector("td");

                        //make copy of current button
                        let newTd = td.cloneNode(true);
                        //change title and insert after 1`st <td>
                        for (let spn of newTd.querySelectorAll("span")) {
                            if (spn.innerText) {
                                spn.innerText = "View";
                                break;
                            }
                        }
                        newTd.querySelector("a").removeAttribute("class");
                        newTd.querySelector("a").removeAttribute("jsaction");
                        if (td.nextSibling) {
                            tr.insertBefore(newTd, td.nextSibling);
                        } else {
                            tr.appendChild(newTd);
                        }

                        //finding "img.irc_mi" up on tree
                        let node = table.parentNode;
                        while (node) {
                            //watchdog for img preview object
                            let img = node.querySelector("img.irc_mi");
                            if (img) {
                                let obs = new MutationObserver(function(mutList) {
                                    for (let mut of mutList) {
                                        try {
                                            //change <a href> to <img src>
                                            let src = mut.target.querySelector("img.irc_mi").src;

                                            this._a.href = src || this._a.href;
                                            this._a.setAttribute("rel", "noreferrer");
                                        } catch (e) {}
                                    }
                                });
                                //store new button <a> node in observer object
                                obs._a = newTd.querySelector("a");

                                //observe <img> parent(<a>)
                                obs.observe(img.parentNode, {attributes: false, childList: true, characterData: false});
                                break;
                            }
                            node = node.parentNode;
                        }
                    } catch (e) {}
                }
                //disconnect when img preview loaded
                if (ar_table.length) {
                    this.disconnect();
                }
            } catch (e) {}
        }
    });

    observer.observe(document.body, {attributes: false, childList: true, characterData: false});
})();
