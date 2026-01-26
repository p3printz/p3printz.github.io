# 🎉 Purple Pillz Printz Website - Complete!

Your professional static website for P3Printz is ready to deploy!

## What You Have

✅ **Complete Pelican Static Site Generator Setup**
- Python-based, easy to maintain
- Markdown content files
- Professional, responsive design

✅ **Professional Design**
- Modern purple and pink branding (P3 colors!)
- Mobile-friendly responsive layout
- Fast loading, SEO-friendly
- Professional service showcase

✅ **Content Pages**
- **Home** - Welcome and services overview
- **Packages** - Pricing tiers (Starter, Professional, Elite)
- **About** - Company mission and team info
- **Contact** - Contact information and consultation request

✅ **Services Described**
- Social media promotion
- Fight camp management
- Custom fight apparel (shirts, pants)
- Branded merchandise (caps, mugs)
- Competition hoodies

✅ **GitHub Pages Ready**
- Automatic deployment via GitHub Actions
- One-time setup, then automatic builds on every update
- Free hosting on GitHub Pages
- Custom domain support available

## Quick Start (3 Steps)

### 1️⃣ Test Locally (Optional but Recommended)

```bash
cd /Users/deepak99/src/p3printz
source venv/bin/activate
make serve
```

Visit http://localhost:8000 to see your site!

### 2️⃣ Create GitHub Repository

```bash
# Initialize Git
git init
git add .
git commit -m "Initial commit: P3Printz website"
git branch -M main

# Push to GitHub (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/p3printz.git
git push -u origin main
```

### 3️⃣ Enable GitHub Pages

1. Go to repository **Settings > Pages**
2. Source: "Deploy from a branch"
3. Branch: `gh-pages`
4. Wait 1-2 minutes
5. Visit: `https://YOUR_USERNAME.github.io/p3printz` ✨

## File Structure

```
p3printz/
├── content/pages/           ← Edit these for content
│   ├── index.md             ← Home page
│   ├── packages.md          ← Pricing/services
│   ├── about.md             ← About company
│   └── contact.md           ← Contact info
├── theme/                   ← Styling and templates
│   ├── templates/
│   │   ├── base.html        ← Main layout
│   │   └── page.html        ← Page template
│   └── static/css/
│       └── style.css        ← Colors & styling
├── .github/workflows/
│   └── deploy.yml           ← Auto-deployment setup
├── pelicanconf.py           ← Configuration
└── README.md                ← Full documentation
```

## Before You Deploy

✏️ Update these files with real information:

1. **[contact.md](content/pages/contact.md)**
   - Add real email address
   - Add phone number
   - Update social media handles

2. **[packages.md](content/pages/packages.md)**
   - Update pricing if needed
   - Modify service descriptions
   - Adjust package tiers

3. **[pelicanconf.py](pelicanconf.py)**
   - Update SOCIAL links with real handles
   - Change AUTHOR if needed

4. **[publishconf.py](publishconf.py)** (Important!)
   - Update SITEURL to your GitHub Pages URL:
   ```python
   SITEURL = 'https://YOUR_USERNAME.github.io/p3printz'
   ```

## Common Tasks

### Update Content
Edit files in `content/pages/` and push to GitHub:
```bash
git add content/
git commit -m "Update: [what changed]"
git push origin main
```
GitHub Actions automatically rebuilds! (takes 1-2 min)

### Change Colors
Edit `theme/static/css/style.css`:
```css
--primary-color: #8b2dc5;      /* Purple */
--secondary-color: #c71585;    /* Magenta */
--accent-color: #ff1493;       /* Pink */
```

### Add New Page
1. Create `content/pages/new-page.md`:
```markdown
Title: Page Title
Slug: page-slug
URL: page-slug.html
Save_as: page-slug.html

# Content here
```

2. Add to navigation in `theme/templates/base.html`

3. Push to GitHub

### Preview Changes Locally
```bash
source venv/bin/activate
make devserver
# Visit http://localhost:8000
```

## Documentation Files

- **[README.md](README.md)** - Full documentation
- **[SETUP_GUIDE.md](SETUP_GUIDE.md)** - Quick start guide
- **[GITHUB_DEPLOYMENT.md](GITHUB_DEPLOYMENT.md)** - Detailed deployment guide

## Need Help?

### Build Locally Failed?
```bash
cd /Users/deepak99/src/p3printz
source venv/bin/activate
rm -rf output/
pelican content -o output -s pelicanconf.py
```

### GitHub Deployment Failed?
Check the Actions tab on your GitHub repository for error messages.

### Want to Use Custom Domain?
1. Point your domain's DNS to GitHub Pages
2. Add custom domain in repository Settings > Pages
3. See [GITHUB_DEPLOYMENT.md](GITHUB_DEPLOYMENT.md) for details

## What's Included

| Item | Details |
|------|---------|
| **Site Generator** | Pelican 4.9.1 (Python) |
| **Design** | Custom responsive theme |
| **Colors** | Purple (#8b2dc5), Magenta (#c71585), Pink (#ff1493) |
| **Hosting** | GitHub Pages (free) |
| **Deployment** | GitHub Actions (automatic) |
| **Content** | 4 markdown pages |
| **Mobile** | Fully responsive |
| **SEO** | Optimized |

## Technology Stack

- **Generator:** Pelican (Python)
- **Templating:** Jinja2
- **Markdown:** Python-Markdown
- **Hosting:** GitHub Pages
- **CI/CD:** GitHub Actions
- **CSS:** Custom responsive styles
- **JavaScript:** Vanilla JS (minimal)

## Performance

✨ **Fast & Efficient**
- Static HTML (no server processing)
- Lightweight CSS (~10KB)
- Mobile optimized
- SEO friendly
- CDN delivered via GitHub Pages

## Next Steps

1. ✅ Update contact info and pricing
2. ✅ Update `publishconf.py` with your GitHub Pages URL
3. ✅ Create GitHub repository
4. ✅ Push code to GitHub
5. ✅ Enable GitHub Pages
6. ✅ Share your new website! 🚀

## Maintenance

**Regular Updates:**
- Edit markdown files as needed
- Push changes to GitHub
- Site rebuilds automatically

**Monitoring:**
- Check Actions tab for build status
- Site updates within 1-2 minutes of push

---

## Questions?

Refer to:
- **Setup Issues?** → [SETUP_GUIDE.md](SETUP_GUIDE.md)
- **Deployment Issues?** → [GITHUB_DEPLOYMENT.md](GITHUB_DEPLOYMENT.md)
- **General Questions?** → [README.md](README.md)

---

**Your P3Printz website is ready to launch! 🎉**

Start with these steps:
1. Update contact info
2. Create GitHub repo
3. Push to GitHub
4. Enable Pages
5. Share your site!

Good luck! 💪🥊
