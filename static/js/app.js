// Dyslexia-friendly font: the checkbox works with CSS alone; this only
// remembers the choice across pages. localStorage can throw (private mode,
// blocked storage), so failures are ignored and the switch still works.
const fontSwitch = document.getElementById('dyslexic-font');
if (fontSwitch) {
  if (document.documentElement.dataset.font === 'dyslexic') fontSwitch.checked = true;
  fontSwitch.addEventListener('change', () => {
    if (fontSwitch.checked) document.documentElement.dataset.font = 'dyslexic';
    else delete document.documentElement.dataset.font;
    try { localStorage.setItem('dyslexic-font', fontSwitch.checked ? '1' : '0'); } catch (e) {}
  });
}

// Twemoji: replace emoji characters with consistent SVG/PNG images.
// Skipped if the CDN script failed to load.
if (window.twemoji) twemoji.parse(document.body);
