---
title: Roadmap
---

# Roadmap

## ✅ Done

- **Domain + hosting** — Cloudflare Pages, auto-deploys from GitHub
- **CouchDB** — running on VPS, secured behind Cloudflare tunnel
- **Obsidian LiveSync** — vault syncing between devices
- **Website live** — static site publishing from vault
- **OpenClaw agent** — running, voice + text, local AI stack

## 🔨 In Progress

- **Messaging channels** — Signal + WhatsApp setup for agent access
- **eSIM** — amaysim number for WhatsApp verification

## 🗺️ Up Next

- **Agent as interface** — message Jimmothy via Signal/WhatsApp, interact with the journal
- **Multi-user support** — invite-only, anonymous by default, identity revealed only in person
- **Private + public journals** — each person gets a private space, shared public journal for all
- **QR invite system** — generate codes that create anonymous accounts
- **Web portal** — login to read/write your personal + public journal in the browser

## 🔮 Future

- **Human Design chart generator** — give birth details to the agent, get a chart back
- **Modality exploration tools** — the platform as a medium for Human Design and similar practices
- **Anonymous handle system** — pseudonyms for the community
- **Agent curation** — Jimmothy summarises, edits, and helps publish

## 🧪 Open Questions

- Per-user database design (CouchDB isolation vs shared with access control)
- Web portal tech stack (PouchDB + what frontend?)
- Chart generator backend (libraries, hosting, output format)
- How much lives on the VPS vs serverless/Cloudflare Workers
