# Meridian Clock (Solar-Adjusted)

The traditional Chinese medicine organ clock divides the day into 12 shichen (時辰), each associated with an organ meridian. We use an **unequal hours** system anchored to four solar cardinal points, so the meridians breathe with the seasons.

## The Four Anchors

| Solar Event | Centers | Meridian | Property |
|---|---|---|---|
| ☀️ Sunrise | bisects | 卯 Large Intestine | Bridge — always 120m |
| 🔆 Solar Noon | centers | 午 Heart | Breathes with daylight |
| 🌅 Sunset | bisects | 酉 Kidney | Bridge — always 120m |
| 🌑 Solar Midnight | centers | 子 Gallbladder | Breathes with darkness |

At the **equinox**, all four anchors align perfectly and every meridian is ~120 minutes — identical to the traditional equal-hours clock as it was designed at Xi'an (~34.5°N).

## How It Works

Each meridian is split into two halves. Each half belongs to either the **day pool** (sunrise→sunset) or the **night pool** (sunset→sunrise):

- **Day half-chunk** = daylight minutes ÷ 12
- **Night half-chunk** = darkness minutes ÷ 12
- **Pure daytime meridians** (Stomach, Spleen, Heart, SI, Bladder) = 2 day halves
- **Pure nighttime meridians** (Pericardium, TB, Gallbladder, Liver, Lung) = 2 night halves
- **Bridge meridians** (Large Intestine, Kidney) = 1 night half + 1 day half = **always 120m**

## Live Times

Run `tcm-clock` for today's exact meridian boundaries:
- `tcm-clock`
- `tcm-clock --now`
- `tcm-clock --json`

---

## Daily Architecture (Diet + Lifestyle)

Use this as the clock-based layer. Keep meal composition in [[Daily Eating Structure]].

### Meridian Flow (snapshot example)

*Snapshot from `tcm-clock --json` (2026-02-21, AEDT). Re-run daily for exact times.*

| Meridian | Time (Start–End) | Energy pattern | Suggested rhythm |
|---|---|---|---|
| 子 Gallbladder | 00:40–02:27 | Deep yin processing, decision integration, neural cleanup | Sleep; no stimulation |
| 丑 Liver | 02:27–04:14 | Detox + blood restoration, emotional processing | Stay asleep; avoid late meals |
| 寅 Lung | 04:14–06:01 | Breath rises, system begins to wake | Gentle waking, breath, light movement |
| 卯 Large Intestine | 06:01–08:01 | Elimination + clearing | Hydrate, bathroom, simplify input |
| 辰 Stomach | 08:01–10:14 | Strong digestive fire, nourishment-ready | Breakfast opener + first supplements |
| 巳 Spleen | 10:14–12:27 | Assimilation, transformation, steady focus | Nutty pudding / light graze; green tea |
| 午 Heart | 12:27–14:40 | Peak yang, circulation, social/cognitive clarity | Main meal + priority creative/collab work |
| 未 Small Intestine | 14:40–16:53 | Sorting/discrimination, integration | Digest + focused task blocks, hydration |
| 申 Bladder | 16:53–19:06 | Output, movement, active unwind | Final meal window; practical tasks |
| 酉 Kidney | 19:06–21:06 | Restoration, reserve-building, return inward | **Food closed**, evening supplements, digital sunset starts |
| 戌 Pericardium | 21:06–22:53 | Heart protection, emotional bonding | Warmth/connection, low arousal activities |
| 亥 Triple Burner | 22:53–00:40 | System reset, endocrine downshift, sleep gate | Melatonin + lights low + sleep entry |

---

## Baseline Rules (current)
1. Meal composition/protocol lives in [[Daily Eating Structure]]
2. This note controls **when** and **how the day flows**
3. Digital sunset: no screens after Kidney meridian starts
4. Re-check times seasonally with `tcm-clock --json`

## Historical Basis (summary)
Traditional shichen were equal-hour blocks; seasonal unequal timing was captured through the historical night-watch system (gēng-diǎn). This synthesis keeps the organ map while letting daily rhythm breathe with actual light/dark cycles.