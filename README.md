# Pen and ink resources

Source for a small [Zola](https://www.getzola.org/) site collecting resources relating to pen and ink drawing.

Live site: https://pdhall99.github.io/pen-and-ink/

## Local development

Install Zola 0.23.4 or newer, then run:

```sh
zola serve
```

The site is intentionally dependency-light: Zola, plain HTML templates, plain CSS, and a small progressive-enhancement script for the light/dark/system theme switcher.

## Deployment

`.github/workflows/pages.yml` builds the site and deploys `public/` to GitHub Pages when changes land on `main`. Pull requests run the same build without deploying.

The build also keeps the existing extensionless `/blog` and `/blog/<slug>` URLs, plus the historical `/feed.xml` URL.
