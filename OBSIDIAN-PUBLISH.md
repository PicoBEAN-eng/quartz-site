# Obsidian → Quartz publishing

This repo can pull selected notes from the Obsidian vault into `content/obsidian/`.

## Configure what gets published

Edit:

- `scripts/obsidian-publish.conf`

Each non-empty line is a path relative to `~/Documents/Omarchy 1`.

Examples:

- `Projects`
- `PictureFrames.md`

## Run sync

```bash
cd ~/Documents/quartz-site
npm run sync:obsidian
```

## Build site after sync

```bash
npm run build:obsidian
```

`build:obsidian` is now pinned to Node 22 automatically via `scripts/node22.sh`.
No manual PATH switching needed.

## Notes

- Only markdown (`*.md`) is copied from folders.
- Destination is fully mirrored (`--delete`) under `content/obsidian/`.
- Override vault path if needed:

```bash
VAULT_DIR="/path/to/vault" npm run sync:obsidian
```
