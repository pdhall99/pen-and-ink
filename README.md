# Pen and ink resources

Source for a small [Zola](https://www.getzola.org/) site collecting resources relating to pen and ink drawing.

Live site: https://pdhall99.github.io/pen-and-ink/

## Theme

The site uses the look and templates from [Zola Bear Blog](https://codeberg.org/alinnow/zola-bearblog). The canonical Bear repository is retained as a Git submodule pinned to the same upstream commit previously used by this site.

Bear currently contains pre-Tera-2 template syntax that Zola 0.23.x rejects while loading a configured theme, before project overrides can replace those files. For now, the project's `templates/` directory contains Bear's small template set with only the compatibility changes required by Zola 0.23.x/Tera 2. There are no intentional design changes.

Once upstream Bear supports current Zola, the intended upgrade is to advance the submodule, set Bear as the configured theme again, and remove the vendored templates. Bear's MIT license notice is retained under `licenses/`.

## Local development

Install Zola 0.23.4 or newer, then initialise/update the upstream theme reference and run:

```sh
git submodule sync --recursive
git submodule update --init --recursive
zola serve
```

For a fresh clone, `git clone --recurse-submodules ...` also checks out the upstream theme reference in one step.

## Deployment

`.github/workflows/pages.yml` builds with Zola 0.23.4 and deploys Zola's `public/` output to GitHub Pages when changes land on `main`. Pull requests run the same production build without deploying.

The site uses Zola's native URL structure and generated files, including trailing slashes on content URLs and `atom.xml` as the generated feed. Static files such as the favicon and Google verification file live under `static/` and are copied by Zola during the build.
