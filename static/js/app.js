const common = () => {
  // Highlight.js
  document.querySelectorAll('pre code:not(.hljs)').forEach((block) => {
    hljs.highlightElement(block);
  });

  // Twemoji
  twemoji.parse(document.body);
};

common();

