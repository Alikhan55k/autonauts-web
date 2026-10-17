#!/bin/sh
# Writes config.js from environment variables. Runs automatically at container start (nginx image),
# or manually:  set -a; . ./.env; set +a; sh docker/40-config.sh ./config.js
OUT="${1:-/usr/share/nginx/html/config.js}"
esc() { printf '%s' "$1" | sed 's/\\/\\\\/g; s/"/\\"/g'; }
cat > "$OUT" <<JS
window.AUTONAUTS = {
  eventName: "$(esc "${EVENT_NAME:-NaSCon'26 - AutoNauts demo}")",
  supabaseUrl: "$(esc "$SUPABASE_URL")",
  supabaseAnonKey: "$(esc "$SUPABASE_ANON_KEY")",
  urls: {
    sessions: "$(esc "$SESSIONS_URL")",
    register: "$(esc "$REGISTER_URL")",
    scan: "$(esc "$SCAN_URL")",
    close: "$(esc "$CLOSE_SESSION_URL")",
    sendReviews: "$(esc "$SEND_REVIEWS_URL")",
    review: "$(esc "$REVIEW_SUBMIT_URL")"
  }
};
JS
echo "config.js written to $OUT"
