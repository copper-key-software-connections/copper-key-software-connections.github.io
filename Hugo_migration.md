# Migration Plan: Docsify to Hugo with GitHub Pages

## Overview

Your assumption is incorrect - **Hugo works excellently with GitHub Pages** and is actually one of the most popular combinations for static sites. The Hugo team provides official documentation for this setup.

---

## Step 1: Set Up Hugo Project

**Install Hugo locally:**

```bash
# macOS
brew install hugo

# Linux
apt install hugo

# Verify
hugo version
```

**Initialize new Hugo site in a new directory:**

```bash
hugo new site copper-key-software
cd copper-key-software
```

---

## Step 2: Choose a Theme

Based on your consulting business needs, here are the best options:

| Theme | Best For | Link |
|-------|----------|------|
| **Hugo Profile** | Personal portfolio, services | https://themes.gohugo.io/themes/hugo-profile/ |
| **Hugo Universal** | Full business website | https://themes.gohugo.io/themes/hugo-universal-theme/ |
| **Hextra** | Documentation/articles | https://imfing.github.io/hextra/ |
| **LoveIt** | Blog + business | https://themes.gohugo.io/themes/loveit/ |

**Recommendation for your business:** **Hugo Profile** or **Hugo Universal**

- Hugo Profile includes: services section, contact info, about page, blog support
- Hugo Universal includes: testimonials, carousel, pricing tables, contact forms

---

## Step 3: Configure GitHub Actions Workflow

Create `.github/workflows/hugo.yaml` with the official Hugo-provided workflow:

```yaml
name: Build and deploy
on:
  push:
    branches:
      - main
  workflow_dispatch:
permissions:
  contents: read
  pages: write
  id-token: write
concurrency:
  group: pages
  cancel-in-progress: false
defaults:
  run:
    shell: bash
jobs:
  build:
    runs-on: ubuntu-latest
    env:
      DART_SASS_VERSION: 1.98.0
      GO_VERSION: 1.26.1
      HUGO_VERSION: 0.158.0
      NODE_VERSION: 24.14.0
      TZ: Europe/Oslo
    steps:
      - name: Checkout
        uses: actions/checkout@v6
        with:
          submodules: recursive
          fetch-depth: 0
      - name: Setup Go
        uses: actions/setup-go@v6
        with:
          go-version: ${{ env.GO_VERSION }}
          cache: false
      - name: Setup Node.js
        uses: actions/setup-node@v6
        with:
          node-version: ${{ env.NODE_VERSION }}
      - name: Setup Pages
        id: pages
        uses: actions/configure-pages@v5
      - name: Create directory for user-specific executable files
        run: mkdir -p "${HOME}/.local"
      - name: Install Dart Sass
        run: |
          curl -sLJO "https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
          tar -C "${HOME}/.local" -xf "dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
          rm "dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
          echo "${HOME}/.local/dart-sass" >> "${GITHUB_PATH}"
      - name: Install Hugo
        run: |
          curl -sLJO "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
          mkdir "${HOME}/.local/hugo"
          tar -C "${HOME}/.local/hugo" -xf "hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
          rm "hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
          echo "${HOME}/.local/hugo" >> "${GITHUB_PATH}"
      - name: Build the site
        run: |
          hugo build \
            --gc \
            --minify \
            --baseURL "${{ steps.pages.outputs.base_url }}/" \
            --cacheDir "${{ runner.temp }}/hugo_cache"
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: ./public
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

*Source: [Hugo Official Documentation](https://gohugo.io/host-and-deploy/host-on-github-pages)*

---

## Step 4: Add Hugo Configuration

Create `hugo.yaml` in your project root:

```yaml
baseURL: 'https://copperkeysoftware.com/'
languageCode: en-us
title: Copper Key Software Connections
theme: hugo-profile  # or your chosen theme

params:
  description: "IT consulting and software development services"
  author: "Dalton"
  
# Enable GitHub Pages image caching
caches:
  images:
    dir: :cacheDir/images
```

---

## Step 5: Migrate Content

**Directory structure mapping:**

| Docsify (current) | Hugo (new) |
|------------------|------------|
| `docs/main/` | `content/` |
| `docs/articles/` | `content/posts/` |
| `docs/blogs/` | `content/posts/` |
| `docs/research/` | `content/research/` |
| `docs/images/` | `static/images/` |

**Add frontmatter to each Markdown file:**

```markdown
---
title: "Services"
date: 2024-01-01
draft: false
description: "Our IT consulting and services"
---
```

---

## Step 6: Configure GitHub Pages

1. Go to your repository Settings > Pages
2. Set Source to **GitHub Actions**
3. Commit and push your changes
4. GitHub will automatically build and deploy

---

## Step 7: Add Contact Form (Optional)

For a consulting business, you'll want a contact form. Options:

1. **Formspree** (free tier available):
   ```html
   <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   ```

2. **Keep HouseCall Pro** - you already have this working!

---

## Estimated Timeline

| Task | Time |
|------|------|
| Install Hugo, create project | 15 min |
| Select and configure theme | 30-60 min |
| Set up GitHub Actions | 15 min |
| Migrate content (copy/paste + frontmatter) | 1-2 hours |
| Style adjustments to match brand | 1-2 hours |
| Test and deploy | 30 min |
| **Total** | **~4-6 hours** |

---

## Key Benefits Over Docsify

| Feature | Docsify | Hugo |
|---------|---------|------|
| SEO | Manual | Built-in |
| Image optimization | None | Automatic |
| Blog with dates/tags | Manual | Built-in |
| Static HTML | No (SPA) | Yes |
| Contact forms | Third-party | Multiple options |
| Theme options | Limited | Extensive |

---

## Documentation References

1. **Hugo + GitHub Pages:** https://gohugo.io/host-and-deploy/host-on-github-pages
2. **Hugo Themes:** https://themes.gohugo.io/
3. **Hextra Theme:** https://imfing.github.io/hextra/
4. **Hugo Profile Theme:** https://themes.gohugo.io/themes/hugo-profile/
5. **Hugo Universal Theme:** https://themes.gohugo.io/themes/hugo-universal-theme/
