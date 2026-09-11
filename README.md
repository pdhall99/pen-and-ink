# Pen and ink resources

Source for a small [Zola](https://www.getzola.org/) site collecting resources relating to pen and ink drawing.

Live site: https://pdhall99.github.io/pen-and-ink/

## Theme

The site uses [Zola Bear Blog](https://codeberg.org/alinnow/zola-bearblog), pinned as a Git submodule. The theme is MIT-licensed and automatically follows the visitor's light/dark browser preference.

## Local development

Install Zola 0.21.0, then clone/update the theme submodule and run:

```sh
git submodule update --init --recursive
zola serve
```

## Deployment

`.github/workflows/pages.yml` checks out the theme submodule, builds the site, and deploys `public/` to GitHub Pages when changes land on `main`. Pull requests run the same build without deploying.

The build also keeps the existing extensionless `/blog` and `/blog/<slug>` URLs, plus the historical `/feed.xml` URL.
