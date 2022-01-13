// ==UserScript==
// @name        AO3 Lazier
// @include     https://archiveofourown.org/*
// @version     3.0
// ==/UserScript==
document.querySelectorAll('li.blurb').forEach(b=>{
    i=b.querySelector('.heading a').href.match(/[0-9]+/)
    b.innerHTML += `<div class="actions">
        <a style="position:absolute;right:7em;top:.5em"
        href='/downloads/${i}/*.epub'>Download</a></div>`})

b=document.createElement('a')
c=document.getElementsByTagName('option')
i=document.getElementsByClassName('chapter')[2]
b.href = c[c.length-1].value
i.parentElement.insertBefore(b, i).innerText = 'Latest Chapter →'
