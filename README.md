# Purple Pillz Printz Website

A professional static website for Purple Pillz Printz, built with [Pelican](https://blog.getpelican.com/) and hosted on GitHub Pages.

## Features

- 🎨 Modern, responsive design with purple and pink branding
- 📱 Mobile-friendly layout
- ⚡ Fast static site generation
- 🚀 Easy GitHub Pages deployment
- 📝 Content written in Markdown
- 🎯 Service packages and pricing showcase
- 📞 Contact information

## Project Structure

```
p3printz/
├── content/
│   └── pages/
│       ├── index.md          # Home page
│       ├── packages.md       # Service packages
│       ├── about.md          # About page
│       └── contact.md        # Contact page
├── theme/
│   ├── templates/
│   │   ├── base.html         # Base template
│   │   └── page.html         # Page template
│   └── static/
│       ├── css/
│       │   └── style.css     # Main stylesheet
│       └── js/
│           └── script.js     # JavaScript
├── pelicanconf.py            # Development settings
├── publishconf.py            # Production settings
├── requirements.txt          # Python dependencies
├── Makefile                  # Build commands
└── README.md                 # This file
```

## Installation

### Prerequisites

- Python 3.7+
- pip (Python package manager)

### Setup

1. Clone or navigate to the project directory:
```bash
cd p3printz
```

2. Create a virtual environment (recommended):
```bash
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

## Development

### Build the site locally

```bash
# Build the site
make html

# Or use Pelican directly
pelican content -o output -s pelicanconf.py
```

### Preview the site

```bash
# Serve the site at http://localhost:8000
make serve
```

Then open http://localhost:8000 in your browser.

### Live development server

For live reloading during development:

```bash
make devserver
```

This will watch for file changes and rebuild the site automatically.

## Deployment to GitHub Pages

### Method 1: Using GitHub Actions (Automatic)

1. Push your repository to GitHub with the `main` branch
2. The GitHub Actions workflow in `.github/workflows/deploy.yml` will automatically:
   - Build the site
   - Deploy to the `gh-pages` branch
   - Update your live website

**Note:** You may need to enable GitHub Pages in your repository settings.

### Method 2: Manual Deployment

First, install ghp-import:
```bash
pip install ghp-import
```

Then deploy:
```bash
make publish
make github
```

This will:
1. Build the site with production settings
2. Push to the `gh-pages` branch
3. Deploy to your GitHub Pages URL

### GitHub Pages Configuration

1. Go to your repository settings
2. Navigate to "Pages"
3. Set source to "Deploy from a branch"
4. Select `gh-pages` as the branch
5. Set folder to `/ (root)`

## Content Management

### Adding a new page

1. Create a new `.md` file in `content/pages/`:

```markdown
Title: Page Title
Slug: page-slug
URL: page-slug.html
Save_as: page-slug.html

# Your Page Title

Your content here...
```

2. Rebuild the site:
```bash
make html
```

### Editing content

- Modify any `.md` file in `content/pages/`
- Rebuild with `make html` or `make devserver`

### Updating metadata

Edit `pelicanconf.py` to change:
- Site name and author
- Navigation links
- Social media links
- Theme settings

## Customization

### Colors

Edit `theme/static/css/style.css` to change the color scheme:

```css
:root {
    --primary-color: #8b2dc5;      /* Purple */
    --secondary-color: #c71585;    /* Medium Violet Red */
    --accent-color: #ff1493;       /* Deep Pink */
    /* ... other colors ... */
}
```

### Typography

Modify font settings in `style.css`:

```css
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    /* ... */
}
```

### Logo and Branding

Edit `theme/templates/base.html` to update the logo:

```html
<a href="/" class="logo">
    <span class="logo-text">P3</span>
    <span class="logo-full">Purple Pillz Printz</span>
</a>
```

## Troubleshooting

### Site not building

```bash
# Clear output directory
rm -rf output/

# Rebuild
pelican content -o output -s pelicanconf.py
```

### GitHub Pages not updating

1. Check that the `gh-pages` branch exists in your repository
2. Verify GitHub Pages is configured in repository settings
3. Check the Actions tab for any workflow errors
4. Try a manual rebuild: `make publish && make github`

### 404 errors after deployment

Make sure `SITEURL` in `publishconf.py` matches your GitHub Pages URL:

```python
# For user/org site:
SITEURL = 'https://yourusername.github.io'

# For project site:
SITEURL = 'https://yourusername.github.io/p3printz'
```

## Updating Site Information

Before deployment, update these files:

1. **Contact Information** - Edit `content/pages/contact.md`
   - Add real email address
   - Add real phone number
   - Update social media links

2. **Pricing** - Edit `content/pages/packages.md`
   - Update package prices
   - Modify package descriptions
   - Add/remove service tiers

3. **Social Media Links** - Update in `pelicanconf.py`:
   ```python
   SOCIAL = (
       ('Instagram', 'https://instagram.com/purplepillzprintz'),
       ('Facebook', 'https://facebook.com/purplepillzprintz'),
       ('TikTok', 'https://tiktok.com/@p3printz'),
   )
   ```

## Performance Tips

- Optimize images before adding them (use next-gen formats like WebP)
- Keep page content concise and well-structured
- Use the built-in caching in GitHub Pages
- Minimize custom CSS (already optimized in the theme)

## Support & Resources

- [Pelican Documentation](https://docs.getpelican.com/)
- [Markdown Syntax](https://www.markdownguide.org/)
- [GitHub Pages Docs](https://docs.github.com/en/pages)

## License

© 2026 Purple Pillz Printz. All rights reserved.

---

**Last Updated:** January 2026
