// ==UserScript==
// @name          AnchorHeadings
// @include       https://minifocs.fly.dev/*/entry/*
// @include       https://minifocs.fly.dev/share/*
// ==/UserScript==
var tagNames = ['h1', 'h2', 'h3', 'h4', 'h5', 'h6'];
var tagSelector = tagNames.join();
var $elements = document.querySelectorAll(tagSelector);

for ($element of $elements) {
  var id = $element.id;

  if (!id) {
    // Check if heading has any nested elements with id
    var $innerElement = $element.querySelector('[id]');
    if ($innerElement) { id = $innerElement.id; }
    else { continue; }
  }

  // Create anchor if not already present
  if (!$element.querySelector('[href]'))
    $element.appendChild(createAnchor(id));
}

function createAnchor(id) {
  var $link = document.createElement('a');
  $link.href = '#' + id;
  $link.id = 'grease-anchor';
  $link.appendChild(document.createTextNode('#'));
  return $link;
}
