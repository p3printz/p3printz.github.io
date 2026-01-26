AUTHOR = 'Purple Pillz Printz'
SITENAME = 'Purple Pillz Printz'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'America/Chicago'

DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (
    ('Home', '/'),
)

# Social widget
SOCIAL = (
    ('Instagram', 'https://instagram.com'),
    ('Facebook', 'https://facebook.com'),
    ('TikTok', 'https://tiktok.com'),
)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True

# Theme settings
THEME = 'theme'

# Menu
DISPLAY_PAGES_ON_MENU = True
DISPLAY_CATEGORIES_ON_MENU = False

# Plugin settings
PLUGINS = []

# Content settings
ARTICLE_PATHS = ['articles']
PAGE_PATHS = ['pages']
ARTICLE_SAVE_AS = 'blog/{slug}.html'
ARTICLE_URL = 'blog/{slug}.html'
PAGE_SAVE_AS = '{slug}.html'
PAGE_URL = '{slug}.html'

# Disable categories and tags for now
DISPLAY_TAGS_ON_SIDEBAR = False
