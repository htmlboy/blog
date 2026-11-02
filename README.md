# javierusobiaga.com

The maintained website is plain HTML and CSS on the `gh-pages` branch. Edit `index.html`, `stylesheets/site.css`, or the historical pages under `blog/` and commit directly to `gh-pages`.

No Ruby, Middleman, Rake, Sass compiler, or local build is required. `.nojekyll` tells GitHub Pages to serve the files unchanged.

## Publishing

GitHub Pages must be configured in Settings → Pages to deploy from the `gh-pages` branch, `/ (root)` directory. A commit to this branch triggers publication. Check the Pages deployment result before assuming a change is live.

`CNAME` specifies `www.javierusobiaga.com` as the canonical hostname. Domain DNS and GitHub Pages HTTPS settings are configured separately; this file alone does not provide a certificate or establish valid DNS.

## Files to preserve

- `index.html`: current personal introduction.
- `stylesheets/site.css`: shared design and font families.
- Adobe Typekit kit `pyr7yya`: existing typography.
- `blog/`: historical article URLs and contents.
- `images/`: site assets.

The `master` branch contains the legacy Middleman source for historical reference. Do not build or deploy it over `gh-pages`: it contains the older homepage. Use `gh-pages` for future website edits.

For an optional local preview, run `python3 -m http.server 8000` from a checkout of `gh-pages`, then open http://localhost:8000.
