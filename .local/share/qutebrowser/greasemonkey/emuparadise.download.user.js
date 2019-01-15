// ==UserScript==
// @name         EmuParadise Download Workaround
// @version      1.2.1
// @description  Replaces the download button link with a working one
// @author       infval (Eptun)
// @match        https://www.emuparadise.me/*/*/*
// @grant        none
// ==/UserScript==

// https://www.reddit.com/r/Piracy/comments/968sm6/a_script_for_easy_downloading_of_emuparadise_roms/
(function() {
  'use strict';

  // Others: 50.7.189.186
  const ipDownload = "50.7.92.186";
  const urlFirstPart = "http://" + ipDownload + "/happyxhJ1ACmlTrxJQpol71nBc/";

  var platform = document.URL.split("/")[3];

  if (platform == "Sega_Dreamcast_ISOs") {
    let downs = document.querySelectorAll("p > a[title^=Download]");
    for (let i = 0; i < downs.length; i++) {
      let findex = 9; // "Download X"
      let lindex = downs[i].title.lastIndexOf(" ISO");
      downs[i].href = urlFirstPart + "/Dreamcast/" + downs[i].title.slice(findex, lindex);
    }
  }
  // match https://www.emuparadise.me/magazine-comic-guide-scans/%NAME%/%ID%
  else if (platform == "magazine-comic-guide-scans") {
    const webArchiveURL = "https://web.archive.org/web/2016/";
    
    let down = document.querySelectorAll("#content > p")[0];
    down.innerHTML = "Getting Download URL...";

    let req = new XMLHttpRequest();  
    req.open('GET', webArchiveURL + document.URL, false);   
    req.send(null);  
    if (req.status == 200) {
      let lindex = req.responseText.indexOf("Size: ");
      let findex = req.responseText.lastIndexOf("http://", lindex);
      let urlLastPart = req.responseText.slice(findex, lindex).match(/\d+\.\d+\.\d+\.\d+\/(.*)"/)[1];
      urlLastPart = urlLastPart.replace(/ /g, "%20"); // encodeURI() changes #, e.g. Sonic - The Comic Issue No. 001 Scan
      down.innerHTML = "<a href=" + urlFirstPart + urlLastPart + ">Download</a>";
    }
    else {
      let info = document.querySelectorAll("#content > div[align=center]")[0];
      let filename = info.children[0].textContent.slice(0, -5); // "X Scan"
      let cat = {
           "Gaming Comics @ Emuparadise": "may/Comics/",
        "Gaming Magazines @ Emuparadise": "may/Mags/"
      }[info.children[1].textContent] || "";
      // URLs with # except The Adventures Of GamePro Issue
      down.innerHTML = "Error when getting URL: " + webArchiveURL + document.URL
        + "<div>Try "
        + "<a href=" + urlFirstPart + cat + encodeURIComponent(filename) + ".cbr" + ">cbr</a> or "
        + "<a href=" + urlFirstPart + cat + encodeURIComponent(filename) + ".rar" + ">rar</a>"
        + "</div>";
    }
  }
  else {
    let id = document.URL.split("/")[5];
  
    let downloadLink = document.getElementsByClassName("download-link")[0];
    let div = document.createElement("div");
    div.innerHTML = `<a target="_blank" href="/roms/get-download.php?gid=` + id
      + `&test=true" title="Download using the workaround script">Download using the workaround script</a>\
         (Middle-click or Right-click -> New tab/window)`;
    downloadLink.insertBefore(div, downloadLink.firstChild);
  }
  
})();
