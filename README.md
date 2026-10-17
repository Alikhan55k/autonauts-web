# AutoNauts web pages (static, env-configured)
Pages: `/` register, `/scan.html` gate scanner, `/review.html?t=TOKEN`, `/dashboard.html`.

## Configure (environment variables, see `.env.example`)
EVENT_NAME, SUPABASE_URL, SUPABASE_ANON_KEY, SESSIONS_URL, REGISTER_URL, SCAN_URL, CLOSE_SESSION_URL, SEND_REVIEWS_URL, REVIEW_SUBMIT_URL

## Test locally
    cp .env.example .env   # fill it in
    docker build -t autonauts-web . && docker run --rm --env-file .env -p 8080:80 autonauts-web
    # without Docker:  set -a; . ./.env; set +a; sh docker/40-config.sh ./config.js; python3 -m http.server 8080
Open http://localhost:8080 (camera needs HTTPS or localhost).

## Deploy on Alternate Clouds
Build from this repo's Dockerfile and set the same variables in the service's environment. Port 80.
