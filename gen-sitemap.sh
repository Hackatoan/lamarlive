#!/usr/bin/env bash
# Regenerates lamarlive sitemap from the published build tree. Idempotent.
# Runs ON THE HOST (ROOT=/opt/homelab/lamarlive) — not shipped in the image.
set -euo pipefail
ROOT=/opt/homelab/lamarlive
BASE=https://lamarlive.hackatoa.com
OUT="$ROOT/sitemap.xml"
tmp=$(mktemp)
{
  echo '<?xml version="1.0" encoding="UTF-8"?>'
  echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'
  echo "  <url><loc>$BASE/</loc><changefreq>daily</changefreq></url>"
  find "$ROOT/u" -mindepth 2 -maxdepth 2 -name index.html 2>/dev/null | sort | while read -r f; do
    d=$(dirname "${f#$ROOT/}"); echo "  <url><loc>$BASE/$d/</loc></url>"
  done
  find "$ROOT/u" -mindepth 3 -maxdepth 3 -name index.html 2>/dev/null | sort | while read -r f; do
    d=$(dirname "${f#$ROOT/}"); echo "  <url><loc>$BASE/$d/</loc></url>"
  done
  echo '</urlset>'
} > "$tmp"
mv "$tmp" "$OUT"
chmod 644 "$OUT"
