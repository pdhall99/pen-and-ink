#!/usr/bin/env bash
set -euo pipefail

# Jekyll currently publishes /blog and /blog/:slug as extensionless URLs
# backed by .html files. Zola normally emits directory/index.html pages, so
# flatten the blog output to keep every existing public URL working.
if [[ -f public/blog/index.html ]]; then
  mv public/blog/index.html public/blog.html
fi

shopt -s nullglob
for page_dir in public/blog/*/; do
  if [[ -f "${page_dir}index.html" ]]; then
    slug="$(basename "${page_dir%/}")"
    mv "${page_dir}index.html" "public/blog/${slug}.html"
    rmdir "$page_dir" 2>/dev/null || true
  fi
done

# Preserve the old feed URL while letting Zola generate the Atom feed.
if [[ -f public/atom.xml ]]; then
  cp public/atom.xml public/feed.xml
fi

# Keep existing repository assets at their current public locations.
if [[ -f assets/favicon.ico ]]; then
  mkdir -p public/assets
  cp assets/favicon.ico public/assets/favicon.ico
fi

if [[ -f google23dfe76de33a5ccd.html ]]; then
  cp google23dfe76de33a5ccd.html public/google23dfe76de33a5ccd.html
fi
