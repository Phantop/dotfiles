// ==UserScript==
// @name          Miniflux Tweaks
// @include       https://minifocs.fly.dev/*/entry/*
// @include       https://minifocs.fly.dev/share/*
// ==/UserScript==
var headings = ['h1', 'h2', 'h3', 'h4', 'h5', 'h6'].join();
var $elements = document.querySelectorAll(headings);

for ($element of $elements) {
  var id = $element.id;

  if (!id) {
    // Check if heading has any nested elements with id
    var $innerElement = $element.querySelector('[id]');
    if ($innerElement) { id = $innerElement.id; }
    else {
      id = $element.tagName + '-' + $element.textContent
      .replace(/\s+/g, '-')   // Replace spaces with hyphens
      .replace(/[^\w-]/g, '') // Remove non-word chars (except hyphens)
      .replace(/--+/g, '-')   // Replace multiple hyphens with single hyphen
      .replace(/^-+/, '')     // Trim hyphens from start
      .replace(/-+$/, '');    // Trim hyphens from end
      $element.id = id;
    }
  }

  // Create anchor if not already present
  if (!$element.querySelector('[href]')) {
    var $link = document.createElement('a');
    $link.href = '#' + id;
    $link.id = 'grease-anchor';
    $link.appendChild(document.createTextNode('#'));
    $element.appendChild($link);
  }
}

var details = document.querySelector("details.entry-enclosures");
details.setAttribute("open", "");
