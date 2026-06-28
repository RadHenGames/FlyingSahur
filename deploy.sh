#!/bin/bash
# deploy.sh
# Copies your Godot HTML5 export into the flying-sahur GitHub Pages repo.
#
# USAGE:
#   ./deploy.sh
#
# SETUP (edit the two paths below before first run):
#   GODOT_EXPORT_DIR  — folder where Godot wrote your HTML5 export files
#   SITE_DIR          — root of your flying-sahur GitHub Pages repo

set -e

# ── CONFIGURE THESE ──────────────────────────────────────────────────────────
GODOT_EXPORT_DIR="$HOME/Documents/godots/flyingsahurweb"
SITE_DIR="$HOME/Projects/flying-sahur"          # GitHub Pages repo root
# ─────────────────────────────────────────────────────────────────────────────

GAME_DIR="$SITE_DIR/game"

echo "==> Clearing old game files..."
rm -rf "$GAME_DIR"
mkdir -p "$GAME_DIR"

echo "==> Copying Godot export from: $GODOT_EXPORT_DIR"
cp -r "$GODOT_EXPORT_DIR"/. "$GAME_DIR/"

echo "==> Game files in $GAME_DIR:"
ls "$GAME_DIR"

echo ""
echo "==> Done. Next steps:"
echo "    cd $SITE_DIR"
echo "    git add ."
echo "    git commit -m 'Deploy game build'"
echo "    git push"
echo ""
echo "    Your game will be live at:"
echo "    https://funkymonkeyhen.github.io/flying-sahur/"
