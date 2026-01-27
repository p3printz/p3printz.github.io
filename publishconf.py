import os
import sys
sys.path.insert(0, os.path.dirname(__file__))
from pelicanconf import *

# This file is only used if you use `make publish` or
# explicitly specify it as your config file.

AUTHOR = 'Purple Pillz Printz'
SITENAME = 'Purple Pillz Printz'

# If your site is available via HTTPS
SITEURL = 'https://p3printz.github.io'
RELATIVE_URLS = True

FEED_ALL_ATOM = 'feeds/all.atom.xml'
CATEGORY_FEED_ATOM = 'feeds/%s.atom.xml'

DELETE_OUTPUT_DIRECTORY = True

# GitHub Pages configuration
# If using a project site (not user/org site), the URL path includes repo name
# For user/org site, SITEURL = 'https://<your-github-username>.github.io'
