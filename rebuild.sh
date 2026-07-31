#!/usr/bin/env bash
# Rebuild the encrypted portal (index.html) from the current field-photo map.
#
# The portal is the photomap AES-256 encrypted client-side with StatiCrypt.
# Re-encryption needs the access phrase (held by R. Letts, never stored in
# this repo) — run this locally, then commit/push the regenerated index.html.
#
# Usage: ./rebuild.sh [path-to-photomap.html]
set -euo pipefail

SRC="${1:-../TEG03741/photomap/TEG03741_PhotoMap_2026-07-30.html}"
[ -f "$SRC" ] || { echo "Photomap not found: $SRC" >&2; exit 1; }

read -r -s -p "Access phrase: " PHRASE; echo

OUT="$(mktemp -d)"
npx staticrypt "$SRC" -d "$OUT" --password "$PHRASE" --remember 7 \
    --template-title "TEG03741 Portal - Protected" --short
mv "$OUT/$(basename "$SRC")" "$(dirname "$0")/index.html"
rmdir "$OUT"
echo "index.html rebuilt from $SRC — review, then commit & push."
