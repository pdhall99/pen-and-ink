# Pen and ink resources

Source for a small [Zola](https://www.getzola.org/) site collecting resources relating to pen and ink drawing.

Live site: https://pdhall99.github.io/pen-and-ink/

## Theme

The site uses [Linkita](https://github.com/salif/linkita), pinned as a Git submodule. Linkita is MIT-licensed, responsive, SEO-friendly, and includes light/dark mode support.

The submodule is pinned to a known commit for reproducible builds. Its `main` branch targets Zola 0.23.x and newer.

## Local development

Install Zola 0.23.4 or newer, then initialise/update the theme submodule and run:

```sh
git submodule sync --recursive
git submodule update --init --recursive
zola serve
```

For a fresh clone, `git clone --recurse-submodules ...` also checks out the theme in one step.

## Deployment

`.github/workflows/pages.yml` checks out the theme submodule, builds with Zola 0.23.4, and deploys `public/` to GitHub Pages when changes land on `main`. Pull requests run the same production build without deploying.

The post-build step preserves the existing extensionless `/blog` and `/blog/<slug>` URLs, rewrites generated internal/feed/sitemap links to those URLs, and keeps the historical `/feed.xml` URL.
