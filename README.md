## What is Mofo Solarized

Mofo Solarized is a clean, minimalist, responsive theme for Pelican, supporting both Light and Dark mode.

## Philosophy

The theme is based on the motherfucking websites philosphy:

- https://motherfuckingwebsite.com
- http://bettermotherfuckingwebsite.com
- https://perfectmotherfuckingwebsite.
- https://evenbettermotherfucking.website
- https://bestmotherfucking.website
- https://thebestmotherfucking.website
- https://thebestmotherfuckingwebsite.co
- https://ultimatemotherfuckingwebsite.com
- https://justfuckingusehtml.com

With some basic colors from the solazired colorschemes (light and dark).

This is a personal take on a middleground between minimalism and aestetic

## Requirements

```
pelican
```

## Configuration

Edit the Pelican config file, to set the `THEME` value to `themes/pelican-mofo-solarized`.

Example basic 

```
from datetime import datetime
NOW = datetime.now()

AUTHOR = 'John Doe'
SITENAME = 'John Doe'
SITEURL = ''

PATH = 'content'
THEME = 'themes/pelican-mofo-solarized'

TIMEZONE = 'UTC'
DEFAULT_LANG = 'en'

FEED_ALL_ATOM = 'rss.xml'
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

PLUGINS = [
    'sitemap',
]

STATIC_PATHS = ['assets', 'extra']

EXTRA_PATH_METADATA = {
    'extra/apple-icon-57x57.png': {'path': 'apple-icon-57x57.png'},
    'extra/apple-icon-60x60.png': {'path': 'apple-icon-60x60.png'},
    'extra/apple-icon-72x72.png': {'path': 'apple-icon-72x72.png'},
    'extra/apple-icon-76x76.png': {'path': 'apple-icon-76x76.png'},
    'extra/apple-icon-114x114.png': {'path': 'apple-icon-114x114.png'},
    'extra/apple-icon-120x120.png': {'path': 'apple-icon-120x120.png'},
    'extra/apple-icon-144x144.png': {'path': 'apple-icon-144x144.png'},
    'extra/apple-icon-152x152.png': {'path': 'apple-icon-152x152.png'},
    'extra/apple-icon-180x180.png': {'path': 'apple-icon-180x180.png'},
    'extra/android-icon-192x192.png': {'path': 'android-icon-192x192.png'},
    'extra/favicon-32x32.png': {'path': 'favicon-32x32.png'},
    'extra/favicon-96x96.png': {'path': 'favicon-96x96.png'},
    'extra/favicon-16x16.png': {'path': 'favicon-16x16.png'},
    'extra/manifest.json': {'path': 'manifest.json'},
    'extra/ms-icon-144x144.png': {'path': 'ms-icon-144x144.png'},
    'extra/favicon.ico': {'path': 'favicon.ico'},
}

DEFAULT_PAGINATION = False

MARKDOWN = {
    'extension_configs': {
        'markdown.extensions.codehilite': {'css_class': 'highlight', 'guess_lang':False,},
```

