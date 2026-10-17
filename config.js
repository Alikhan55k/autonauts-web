// LOCAL-DEV DEFAULT. In Docker / Alternate Clouds this file is regenerated at start-up from environment variables
// (see docker/40-config.sh and .env.example), so nothing here needs editing for deployment.
window.AUTONAUTS = {
  eventName: "NaSCon'26 - AutoNauts demo",
  supabaseUrl: "https://drlpnbudkzxwoquydazh.supabase.co",
  supabaseAnonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRybHBuYnVka3p4d29xdXlkYXpoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTIxNTU1NjYsImV4cCI6MjEwNzczMTU2Nn0.oVH2YHsSFeJu5E-9y2qY0CZOwak_GDDexe2KL8RN19s",
  urls: {
    sessions: "https://YOUR-N8N/webhook/autonauts-sessions",
    register: "https://YOUR-N8N/webhook/autonauts-register",
    scan: "https://YOUR-N8N/webhook/autonauts-scan",
    close: "https://YOUR-N8N/webhook/autonauts-organizer",
    sendReviews: "https://YOUR-N8N/webhook/autonauts-organizer",
    review: "https://YOUR-N8N/webhook/autonauts-review"
  }
};
