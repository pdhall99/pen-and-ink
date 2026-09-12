# Pen and ink resources

Source for a small [Zola](https://www.getzola.org/) site collecting resources relating to pen and ink drawing.

Live site: https://pdhall99.github.io/pen-and-ink/

## Design

The site does not use a third-party Zola theme. Its presentation layer is intentionally small: a handful of templates under `templates/` and one stylesheet at `static/style.css`.

Zola handles the content machinery — Markdown rendering, sections, dates, taxonomies, feeds, sitemap generation and URLs — while the local templates provide the HTML structure and styling.

The visual design is deliberately minimal: a narrow readable column, a simple dark header and navigation, restrained typography and colours, and automatic light/dark mode. There is no JavaScript or frontend build step.

## Local development

Install Zola 0.23.4 or newer, then run:

```sh
zola serve
```

## Deployment

`.github/workflows/pages.yml` builds with Zola 0.23.4 and deploys Zola's `public/` output to GitHub Pages when changes land on `main`. Pull requests run the same production build without deploying.

The site uses Zola's native URL structure and generated files, including trailing slashes on content URLs and `atom.xml` as the generated feed. Static files such as the favicon, stylesheet and Google verification file live under `static/` and are copied by Zola during the build.

## License

Site code is licensed under the MIT License. Unless otherwise stated, site content is © Philip D. Hall and is not covered by the software licence.
