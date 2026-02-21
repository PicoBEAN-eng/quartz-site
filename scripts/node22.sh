#!/usr/bin/env bash
set -euo pipefail

NODE22_BIN="$HOME/.local/share/mise/installs/node/22.17.0/bin"

if [[ ! -x "$NODE22_BIN/node" ]]; then
  echo "Node 22.17.0 not found at $NODE22_BIN" >&2
  echo "Run: mise install node@22.17.0" >&2
  exit 1
fi

export PATH="$NODE22_BIN:$PATH"
exec "$@"
