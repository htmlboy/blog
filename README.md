# javierusobiaga.com

The website is plain HTML and CSS on `master`. Edit `index.html` or `stylesheets/site.css` and commit directly to `master`.

No Ruby, Middleman, Rake, Sass compiler, or local build is required. `.nojekyll` tells GitHub Pages to serve the files unchanged.

## Publishing

GitHub Pages deploys from `master`, `/ (root)`. Commits to this branch trigger publication. Check the Pages deployment result before assuming a change is live.

`CNAME` specifies `www.javierusobiaga.com` as the canonical hostname. DNS and HTTPS are configured separately. Keep Enforce HTTPS enabled in Settings → Pages.

## Site files

- `index.html`: personal introduction.
- `stylesheets/site.css`: design and font families.
- Adobe Typekit kit `pyr7yya`: typography.
- `images/`: site assets.

The blog has been retired and its published files removed. Historical articles remain recoverable through Git history. The legacy Middleman project is preserved on `archive/middleman`; `gh-pages` is an old snapshot and is not deployed. Use `master` for all future website edits.

For an optional local preview, run `python3 -m http.server 8000` from the repository root and open http://localhost:8000.
