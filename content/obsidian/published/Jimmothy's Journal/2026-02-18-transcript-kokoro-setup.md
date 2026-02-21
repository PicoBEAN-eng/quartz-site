# Transcript — Kokoro TTS Setup
**Date:** 2026-02-18, ~09:39–09:47 AEDT

---

[Wed 2026-02-18 09:39] **picobean:** It is morning now. Good morning. ook, okay, so the Cook-o-Roe download looked like it went well and then auto launched. I've closed it now, but that's a success.

[Wed 2026-02-18 09:39] **jimmothy:** Morning! ☀️ Nice — Kokoro's pulled and launched successfully then. That's one step closer to wiring it into OpenClaw. Whenever you want to pick a voice and hook it up, just say the word. (Also noting the WhatsApp gateway had a few disconnects overnight — 428s and a 503 — but it reconnected each time within seconds, so nothing to worry about there.)

[Wed 2026-02-18 09:40] **picobean:** Alright, that's good to know. We haven't been using what that much, so... Yeah, but yeah, still good to know. We'll get that calibrated more effectively. Another time. kay, so... Great. If we can do the wiring up to open-floor, that'd be fantastic!

[Wed 2026-02-18 09:40] **jimmothy:** Let me check the current config and Kokoro's setup to wire it in.
*[Checked config, confirmed Kokoro running on port 8880, tested API, found OPENAI_TTS_BASE_URL env var in source code, patched config: provider=openai, model=kokoro, voice=bf_emma, set OPENAI_TTS_BASE_URL=http://localhost:8880/v1]*

Done! Kokoro TTS is now wired into OpenClaw. Provider: openai (pointing at Kokoro via OPENAI_TTS_BASE_URL), Model: kokoro, Voice: bf_emma (British female). Gateway restarting now. Kokoro has 65 voices to choose from. Want to audition a few, or is bf_emma a good starting vibe?

[Wed 2026-02-18 09:42] **picobean:** Yeah, let's just like, um, chuck on. Like, we will surely go for a bunch, but yeah, just pick one for now and let's use that. o yeah, you're already picked one and great. I want to hear it. Have we got the setup working?

[Wed 2026-02-18 09:42] **jimmothy:** Let me test it right now.
*[Generated TTS via tool — but it was still Edge TTS (48 kbps). Played through mpv.]*

[Wed 2026-02-18 09:44] **picobean:** Haven't heard it yet

[Wed 2026-02-18 09:44] **jimmothy:** *[Played audio again via mpv at full volume. Also tested Kokoro directly via curl — played that too.]*

[Wed 2026-02-18 09:44] **picobean:** You sounds very much like the old voice we had

[Wed 2026-02-18 09:44] **jimmothy:** Oh! So you DID hear it — it's just sounding like Edge TTS still. *[Investigated — confirmed the tts tool output was Edge (48 kbps) while direct Kokoro was different (128 kbps). Found that OPENAI_TTS_BASE_URL wasn't in the running process env — SIGUSR1 hot-reload doesn't pick up new env vars. Tried gateway restart but commands.restart=false.]* Can you run `openclaw gateway restart` in a terminal?

[Wed 2026-02-18 09:45] **picobean:** Oh, that time it, like so it's changed already, it changed. You said hello, Kokoro speaking, can you tell the difference? That was in a British female voice.

[Wed 2026-02-18 09:45] **jimmothy:** That was Kokoro directly! The voice works and sounds good. The issue is just that OpenClaw's tts tool is still using Edge because the env var didn't load into the running process. Once you run `openclaw gateway restart`, the tts tool will use Kokoro automatically.

[Wed 2026-02-18 09:47] **picobean:** I think we end this session. I'll do a gateway restart in a second. And if you could do the usual three things, update your own memory before we close off this session. Add this to today's Obsidian journal entry and pick the whole transcript and put it in the transcript. Think without the metadata, but with the timestamps, that would be amazing. Thank you.
