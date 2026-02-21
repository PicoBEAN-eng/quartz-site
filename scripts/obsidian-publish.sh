#!/usr/bin/env bash
set -euo pipefail

VAULT_DIR="${VAULT_DIR:-$HOME/Documents/Omarchy 1}"
DEST_DIR="${DEST_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/content/obsidian}"
CONF_FILE="${CONF_FILE:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/obsidian-publish.conf}"

if [[ ! -d "$VAULT_DIR" ]]; then
  echo "Vault not found: $VAULT_DIR" >&2
  exit 1
fi

if [[ ! -f "$CONF_FILE" ]]; then
  echo "Config file not found: $CONF_FILE" >&2
  exit 1
fi

mapfile -t paths < <(grep -vE '^\s*#|^\s*$' "$CONF_FILE")
if [[ ${#paths[@]} -eq 0 ]]; then
  echo "No paths configured in $CONF_FILE" >&2
  exit 1
fi

rm -rf "$DEST_DIR"
mkdir -p "$DEST_DIR"

for rel in "${paths[@]}"; do
  src="$VAULT_DIR/$rel"

  if [[ -d "$src" ]]; then
    while IFS= read -r -d '' file; do
      rel_from_src="${file#"$src/"}"
      # Avoid Quartz default ignore of "public" paths by remapping Public/ -> published/
      if [[ "$rel" == "Public" ]]; then
        sub="published/$rel_from_src"
      else
        sub="$rel/$rel_from_src"
      fi
      mkdir -p "$DEST_DIR/$(dirname "$sub")"
      cp "$file" "$DEST_DIR/$sub"
    done < <(find "$src" -type f -name '*.md' -print0)
  elif [[ -f "$src" ]]; then
    if [[ "$rel" == Public/* ]]; then
      sub="published/${rel#Public/}"
    else
      sub="$rel"
    fi
    mkdir -p "$DEST_DIR/$(dirname "$sub")"
    cp "$src" "$DEST_DIR/$sub"
  else
    echo "Skipping missing path: $rel" >&2
  fi
done

echo "Published Obsidian selection to: $DEST_DIR"
