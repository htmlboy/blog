# javierusobiaga.com

The maintained website is plain HTML and CSS on `master`. Edit `index.html`, `stylesheets/site.css`, or the historical pages under `blog/` and commit directly to `master`.

No Ruby, Middleman, Rake, Sass compiler, or local build is required. `.nojekyll` tells GitHub Pages to serve the files unchanged.

## Publishing

GitHub Pages deploys from `master`, `/ (root)`. Commits to this branch trigger publication. Check the Pages deployment result before assuming a change is live.

`CNAME` specifies `www.javierusobiaga.com` as the canonical hostname. DNS and HTTPS are configured separately. Keep Enforce HTTPS enabled in Settings → Pages.

## Site files

- `index.html`: current personal introduction.
- `stylesheets/site.css`: shared design and font families.
- Adobe Typekit kit `pyr7yya`: existing typography.
- `blog/`: historical articles, retained pending a separate removal decision.
- `images/`: site assets.

The legacy Middleman project is preserved on `archive/middleman`. The former publishing branch `gh-pages` is retained as a snapshot and is no longer used for deployment. Use `master` for all future website edits.

For an optional local preview, run `python3 -m http.server 8000` from the repository root and open http://localhost:8000.
