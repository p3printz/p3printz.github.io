# GitHub Pages Deployment Guide

## Prerequisites

Before deploying, ensure you have:
- A GitHub account
- Git installed on your machine
- The P3Printz website repository

## Step 1: Prepare Your GitHub Repository

### Create a New Repository

1. Go to https://github.com/new
2. Repository name: `p3printz` (or your preferred name)
3. Description: "Professional website for Purple Pillz Printz"
4. Choose Public (for GitHub Pages to work)
5. Do NOT initialize with README (we already have one)
6. Click "Create repository"

## Step 2: Initial Setup (One-Time)

### Initialize Git in Your Project

```bash
cd /Users/deepak99/src/p3printz

# Initialize git
git init

# Add all files
git add .

# Create first commit
git commit -m "Initial commit: P3Printz website with Pelican"

# Rename branch to main (if needed)
git branch -M main

# Add remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/p3printz.git

# Push to GitHub
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings**
3. Scroll down to **Pages** section
4. Under "Build and deployment":
   - Source: Select "Deploy from a branch"
   - Branch: Select `gh-pages`
   - Folder: Select `/ (root)`
5. Click **Save**

## Step 4: Automatic Deployment

The GitHub Actions workflow in `.github/workflows/deploy.yml` will:

1. Automatically trigger when you push to `main` branch
2. Build the site with Pelican
3. Deploy to the `gh-pages` branch
4. Update your live website at: `https://YOUR_USERNAME.github.io/p3printz`

### Monitor Deployment

1. Go to your repository
2. Click on the **Actions** tab
3. You'll see the "Deploy to GitHub Pages" workflow
4. Watch for the green checkmark (successful) or red X (failed)

## Step 5: Verify Your Site

After a successful deployment:

1. Wait 1-2 minutes for GitHub to process
2. Visit: `https://YOUR_USERNAME.github.io/p3printz`
3. You should see your P3Printz website!

## Making Updates

### To update your site:

1. Edit content files in `content/pages/`
2. Or modify theme in `theme/`
3. Commit your changes:
   ```bash
   git add .
   git commit -m "Update: [describe your changes]"
   git push origin main
   ```
4. GitHub Actions automatically rebuilds and deploys!

## Custom Domain (Optional)

To use a custom domain (like `www.purplepillzprintz.com`):

1. Update your domain's DNS settings to point to GitHub Pages
2. Go to repository **Settings > Pages**
3. Under "Custom domain", enter your domain
4. Click **Save**
5. Follow GitHub's instructions for DNS configuration

See: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site

## Troubleshooting

### Site Not Appearing

**Problem:** After deployment, site shows 404 error

**Solution:**
1. Check that `gh-pages` branch exists in your repository
2. Verify GitHub Pages settings (should be `Deploy from a branch`)
3. Wait a few minutes for GitHub to process
4. Check the Actions tab for build errors

### Build Failed

**Problem:** Red X in GitHub Actions

**Solution:**
1. Click on the failed workflow
2. Check the logs for error messages
3. Common issues:
   - Missing Python dependencies
   - Invalid Markdown syntax
   - File path errors

### Wrong Site URL

**Problem:** Site appears at wrong URL or has broken links

**Solution:**
Update `publishconf.py`:
```python
# For project repository site:
SITEURL = 'https://YOUR_USERNAME.github.io/p3printz'

# Or for user/org site:
SITEURL = 'https://YOUR_USERNAME.github.io'
```

Then commit and push.

## Manual Deployment (Alternative)

If GitHub Actions isn't working, deploy manually:

```bash
cd /Users/deepak99/src/p3printz

# Activate virtual environment
source venv/bin/activate

# Install ghp-import if needed
pip install ghp-import

# Build for production
pelican content -o output -s publishconf.py

# Deploy to gh-pages branch
ghp-import -b gh-pages output
git push origin gh-pages
```

## Important Notes

⚠️ **Before First Deployment:**
- Update `SITEURL` in `publishconf.py` to your GitHub Pages URL
- Update contact email in `content/pages/contact.md`
- Update social media links in `pelicanconf.py`
- Update pricing in `content/pages/packages.md`

📝 **Keep in Mind:**
- The website is built automatically whenever you push to `main`
- The `gh-pages` branch is auto-generated - don't edit it manually
- Your source code remains on the `main` branch
- Updates typically appear within 1-2 minutes

## Quick Reference

| Task | Command |
|------|---------|
| Create repo | GitHub website |
| First deploy | `git push origin main` |
| Update content | Edit + `git push origin main` |
| Check status | Visit Actions tab |
| View live site | Visit GitHub Pages URL |

---

For more help, see:
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Pelican Documentation](https://docs.getpelican.com/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
