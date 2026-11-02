# javierusobiaga.com

The website is plain HTML and CSS on `master`. Edit `index.html` or `stylesheets/site.css` and commit directly to `master`.

No Ruby, Middleman, Rake, Sass compiler, or local build is required. `.nojekyll` tells GitHub Pages to serve the files unchanged.

## Publishing

GitHub Pages deploys from `master`, `/ (root)`. Commits to this branch trigger publication. Check the Pages deployment result before assuming a change is live.

`CNAME` specifies `www.javierusobiaga.com` as the canonical hostname. DNS and HTTPS are configured separately. Keep Enforce HTTPS enabled in Settings → Pages.

## Site files

- `index.html`: personal introduction.
- `stylesheets/site.css`: design and font families.
- `fonts/`: self-hosted Rubik 800 (title) and Bitter 500 (body), WOFF2, with licenses and source notes. No Adobe Typekit or Google Fonts connections are needed.
- `images/`: site assets.

The blog has been retired and its published files removed. Historical articles remain recoverable through Git history. The legacy Middleman project is also recoverable through Git history; no archive branch is needed. Use `master` for all future website edits.

For an optional local preview, run `python3 -m http.server 8000` from the repository root and open http://localhost:8000.
