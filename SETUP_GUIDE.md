# Quick Start Guide for P3Printz Website

## 5-Minute Setup

### 1. Install Requirements

```bash
cd p3printz
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### 2. Build the Site

```bash
make html
```

### 3. Preview Locally

```bash
make serve
```

Visit http://localhost:8000 in your browser.

---

## Deploy to GitHub Pages

### Option A: Automatic (Recommended)

1. Create a GitHub repository
2. Push your code:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/p3printz.git
   git push -u origin main
   ```
3. GitHub Actions will automatically deploy! ✅

### Option B: Manual Deployment

1. Install ghp-import:
   ```bash
   pip install ghp-import
   ```

2. Deploy:
   ```bash
   make publish
   ghp-import -b gh-pages output
   git push origin gh-pages
   ```

---

## Update Site Content

### Edit Pages
Edit files in `content/pages/`:
- `index.md` - Home page
- `packages.md` - Service packages & pricing
- `about.md` - About the company
- `contact.md` - Contact information

### Update Site Info
Edit `pelicanconf.py`:
```python
AUTHOR = 'Purple Pillz Printz'
SITENAME = 'Purple Pillz Printz'
```

### Change Colors
Edit `theme/static/css/style.css`:
```css
--primary-color: #8b2dc5;      /* Purple */
--secondary-color: #c71585;    /* Medium Violet Red */
--accent-color: #ff1493;       /* Deep Pink */
```

---

## Common Tasks

### Add a New Page
1. Create `content/pages/new-page.md`
2. Add metadata:
   ```
   Title: Page Title
   Slug: page-slug
   URL: page-slug.html
   Save_as: page-slug.html
   ```
3. Rebuild: `make html`

### Update Navigation
Edit menu links in `theme/templates/base.html`:
```html
<li><a href="/new-page.html">New Page</a></li>
```

### Change Social Media Links
Edit `pelicanconf.py`:
```python
SOCIAL = (
    ('Instagram', 'https://instagram.com/your-handle'),
    ('Facebook', 'https://facebook.com/your-page'),
    ('TikTok', 'https://tiktok.com/@your-handle'),
)
```

---

## Troubleshooting

**Site won't build:**
```bash
rm -rf output/
make html
```

**Want to rebuild while editing:**
```bash
make devserver  # Watches for changes automatically
```

**Check for errors:**
```bash
pelican content -o output -s pelicanconf.py -v
```

---

## File Reference

| File | Purpose |
|------|---------|
| `content/pages/` | Your page content |
| `theme/templates/` | HTML templates |
| `theme/static/css/style.css` | Styling |
| `pelicanconf.py` | Configuration |
| `publishconf.py` | Production settings |
| `Makefile` | Build commands |

---

## Next Steps

1. ✅ Test locally with `make serve`
2. ✅ Update contact information in `contact.md`
3. ✅ Update social links in `pelicanconf.py`
4. ✅ Update pricing in `packages.md`
5. ✅ Deploy to GitHub Pages
6. ✅ Update repository settings for GitHub Pages
7. ✅ Share your new website!

---

**Need help?** See README.md for detailed documentation.
