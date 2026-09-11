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

`.github/workflows/pages.yml` checks out the theme submodule, builds with Zola 0.23.4, and deploys Zola's `public/` output to GitHub Pages when changes land on `main`. Pull requests run the same production build without deploying.

The site now uses Zola's native URL structure and generated files. That means URLs may differ from the previous Jekyll site, including trailing slashes on content URLs and `atom.xml` as the generated feed. Static files such as the favicon and Google verification file live under `static/` and are copied by Zola during the build.
