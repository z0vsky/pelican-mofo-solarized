Title: Why I went back to a static site
Date: 2026-09-14
Modified: 2026-09-20
Category: Web
Tags: pelican, minimalism
Slug: static-site
Description: No database, no admin panel, just Markdown and HTML.

No database, no admin panel, no plugins to patch. Just **Markdown files**, a build command and a folder of HTML that any server can host.

Building the whole site takes a single function call:

```python
from pelican import Pelican
from pelican.settings import read_settings

settings = read_settings("pelicanconf.py")
Pelican(settings).run()  # writes everything to output/
```

The result loads fast, works without JavaScript and will still open in twenty years.
