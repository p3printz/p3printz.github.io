# Quick Reference Card

## 🚀 Deploy in 3 Steps

### 1. Create GitHub Repo
```bash
cd /Users/deepak99/src/p3printz
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/p3printz.git
git push -u origin main
```

### 2. Enable GitHub Pages
- Settings → Pages
- Source: "Deploy from a branch"
- Branch: `gh-pages`
- Save

### 3. Done! ✨
Site live at: `https://YOUR_USERNAME.github.io/p3printz`

---

## 📝 Commonly Used Commands

```bash
# Build locally
make html

# Preview locally
make serve

# Live reload while editing
make devserver

# Update site (after editing content)
git add .
git commit -m "Update: description"
git push origin main
```

---

## ✏️ Edit These Files

| File | What to Change |
|------|---|
| `content/pages/contact.md` | Email & phone |
| `content/pages/packages.md` | Pricing |
| `content/pages/about.md` | Company info |
| `pelicanconf.py` | Social media links |
| `publishconf.py` | **IMPORTANT:** GitHub Pages URL |

---

## 🎨 Customize

### Colors
`theme/static/css/style.css` (lines 1-10)

### Logo
`theme/templates/base.html` (lines 13-18)

### Navigation
`theme/templates/base.html` (lines 22-28)

---

## 📁 File Structure

```
p3printz/
├── content/pages/          ← Edit for content
├── theme/                  ← Edit for design
├── pelicanconf.py         ← Configuration
├── publishconf.py         ← IMPORTANT: Set URL here
└── README.md              ← Full docs
```

---

## 🔗 Important URLs

- **Local Preview:** http://localhost:8000
- **Live Site:** https://YOUR_USERNAME.github.io/p3printz
- **GitHub Repo:** https://github.com/YOUR_USERNAME/p3printz
- **Deployment Status:** Actions tab on GitHub

---

## 📞 Need Help?

| Issue | See This File |
|-------|---|
| Setup | SETUP_GUIDE.md |
| Deployment | GITHUB_DEPLOYMENT.md |
| General | README.md |
| Overview | OVERVIEW.md |

---

## ⚡ Quick Tips

✓ Always test locally: `make serve`
✓ Update SITEURL in publishconf.py before deploying
✓ Wait 1-2 min after push for site to update
✓ Check Actions tab for deployment status
✓ Edit Markdown files, not HTML
✓ Images go in `theme/static/images/`

---

## 🎯 Your Site Includes

✅ 4 Professional Pages
✅ 3 Pricing Tiers
✅ 5 Main Services + À La Carte
✅ Mobile Responsive Design
✅ GitHub Pages Ready
✅ Auto-Deploy on Push
✅ Professional Branding
✅ Contact & Social Links

---

**Status:** Ready to Deploy 🚀
**Next Step:** Update contact info & deploy!
