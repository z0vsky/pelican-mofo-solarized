# Demo site for previewing the theme. Run `make serve` from the repo root.
# Relative paths are resolved from this file's folder.
import os

from pelican.settings import DEFAULT_CONFIG

AUTHOR = 'Jane Doe'
SITENAME = 'Jane Doe'
SITESUBTITLE = 'Notes on code, tools and the small web'
SITEURL = ''

PATH = 'content'
THEME = '..'
TIMEZONE = 'UTC'
DEFAULT_LANG = 'en'
DEFAULT_PAGINATION = 3

# No feeds or cache needed for a local preview.
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None
LOAD_CONTENT_CACHE = False

# The theme is this repo, and Pelican watches the whole theme folder for changes.
# Without this, every rebuild of demo/output triggers another rebuild.
IGNORE_FILES = DEFAULT_CONFIG['IGNORE_FILES'] + ['*/demo/output/*']

DISPLAY_CATEGORIES_ON_MENU = False
MENUITEMS = [('Archives', '/archives.html'), ('Tags', '/tags.html')]

# Override from the command line, e.g. `make serve COLOR=dark CODE=light`.
MOFO_COLOR_SCHEME = os.environ.get('MOFO_COLOR_SCHEME', 'system')
MOFO_CODE_SCHEME = os.environ.get('MOFO_CODE_SCHEME', 'system')
MOFO_LICENSE = {
    'name': 'CC BY 4.0',
    'url': 'https://creativecommons.org/licenses/by/4.0/',
}
