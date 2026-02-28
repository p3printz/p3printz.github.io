# Purple Pillz Printz — Project Overview

## About

**Purple Pillz Printz** is an MMA fighter promotion and branding service based in Michigan.
The business offers social media promotion, custom fight apparel, merchandise, and brand
development for MMA fighters.

- **Owner / Contact:** Josh Visel — jvisel99@gmail.com | +1 (734) 780-6788
- **Instagram:** [@jvisel145](https://instagram.com/jvisel145)
- **Live site:** [p3printz.github.io](https://p3printz.github.io)

---

## Tech Stack

| Layer | Technology |
|---|---|
| Static site generator | [Jekyll](https://jekyllrb.com/) 4.4.1 |
| Base theme | Minima 2.5.2 (heavily customized) |
| Styling | SCSS (`assets/main.scss`) |
| Fonts | Google Fonts — Oswald (headings), Open Sans (body) |
| Hosting | GitHub Pages (auto-deploys on push to `main`) |
| CI/CD | GitHub Actions — `.github/workflows/jekyll.yml` |
| Ruby | 3.4.1 (managed via `.rubies`) |

---

## Repository

- **GitHub repo:** `p3printz/p3printz.github.io`
- **Remote URL:** `https://p3printz@github.com/p3printz/p3printz.github.io.git`
- **Default branch:** `main`
- **Authentication:** GitHub CLI (`gh`) authenticated as `p3printz`

---

## Project Structure

```
p3printz/
├── _config.yml              # Site settings, nav order, social usernames
├── _includes/
│   ├── head.html            # Overrides minima — adds Google Fonts
│   ├── header.html          # Overrides minima — adds nav CTA button
│   └── footer.html          # Overrides minima — 3-column structured footer
├── _layouts/
│   └── home.html            # Custom layout for homepage with hero section
├── _posts/                  # Blog posts (unused currently)
├── assets/
│   └── main.scss            # All custom styles (overrides minima's main.scss)
├── index.markdown           # Homepage (uses home layout)
├── about.markdown           # About page
├── packages.markdown        # Packages/pricing page
├── contact.markdown         # Contact page
├── 404.html                 # Custom 404 page
└── .github/workflows/
    └── jekyll.yml           # GitHub Actions build & deploy workflow
```

---

## Pages

| Page | URL | Description |
|---|---|---|
| Home | `/` | Hero section + services overview |
| About Us | `/about/` | Mission, services, and team info |
| Our Packages | `/packages/` | 6 pricing tiers in card grid |
| Contact | `/contact/` | Contact info, Instagram icon button |

---

## Design System

### Colors
| Variable | Hex | Usage |
|---|---|---|
| `$bg-dark` | `#0d0d0d` | Page background |
| `$bg-mid` | `#161616` | Header / footer background |
| `$bg-card` | `#1e1e1e` | Cards, inputs |
| `$purple-main` | `#8b2fc9` | Primary accent, borders, buttons |
| `$purple-light` | `#a855f7` | Hover states, icons, subheadings |
| `$gold` | `#f0a500` | H3 headings, link hover |
| `$text-primary` | `#f0f0f0` | Main text |
| `$text-muted` | `#9ca3af` | Secondary text, labels |

### Typography
- **Headings:** Oswald (700) — uppercase, condensed
- **Body:** Open Sans (400/600)

---

## Packages

| Tier | Social Posts | Hats | Shirts | Extras |
|---|---|---|---|---|
| Basic | 2x / 2 weeks | 5 | 5 | — |
| Standard | 3x / 2 weeks | 10 | 10 | — |
| Bronze | 2x / week | 15 | 15 | 2 color choices |
| Silver | 3x / week | 20 | 20 | 3 colors, 5 wristbands |
| **Gold** ⭐ | 5x / week | 25 | 25 | 5 colors, 10 wristbands |
| Platinum | 6–7x / week | 30 | 30 | Any color, 15 wristbands |

All packages include logo placement on fight shorts or banner, and fight week shoutout coverage.
Pricing is custom — contact for a quote.

---

## UI Features Implemented

- [x] Dark purple theme (full site)
- [x] Google Fonts (Oswald + Open Sans)
- [x] Hero section with gradient headline and CTA buttons
- [x] Pricing cards grid with "Most Popular" badge on Gold
- [x] Structured 3-column footer (brand, links, contact)
- [x] Instagram icon button (contact page + footer)
- [x] "Get Started" CTA button in nav bar
- [x] Custom nav order via `header_pages`
- [x] Responsive layout (mobile-friendly)

## Planned / Not Yet Done

- [ ] Fighter showcase grid (needs photos)
- [ ] Real contact form (Formspree — needs account setup at formspree.io)
- [ ] Favicon / logo image
- [ ] Testimonials section
