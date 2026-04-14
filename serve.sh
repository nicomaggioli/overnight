#!/bin/bash
# Start a local server to view this archive offline.
# WASM, fetch(), and other browser APIs require HTTP — they won't work from file:// URLs.
PORT=${1:-8000}
DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Serving at http://localhost:$PORT"
echo "Press Ctrl+C to stop."
cd "$DIR" && python3 -m http.server "$PORT" --bind 127.0.0.1
