---
created: 2026-10-03T19:58:04
source: claude-code
project: /src/notes-goblin
title: Fun layer — podcasts, light videos, talks & conferences for malware analysis / RE
tags: [fun, podcasts, conferences, talks, malware, reverse-engineering, resources]
---

# Fun layer — podcasts, light videos, talks & conferences for malware analysis / RE

Your `yt.html` already has the video side well covered (danooct1, Eric Parker, Ghidra Ninja, Nathan Baggs, Displaced Gamers, Retro Game Mechanics, TPSC, IppSec…). The actual hole in `resources.md` is **audio** — your Podcasts section is really a YouTube section with Darknet Diaries bolted on. So here's the fun layer, sorted by format.

## This month, while it's live
- **[Flare-On 13 is running right now](https://flare-on.com)** — started Sep 25, four weeks, so ~Oct 23. Your beginner-track note points at the *archives*; the live one is better because the whole internet is stuck on the same challenge and the Discords are loud. Even solving #1–3 and bailing is a good time.
- **Ekoparty** Oct 7–9 (Buenos Aires) and **[Hexacon](https://www.hexacon.fr/)** Oct 16–17 (Paris) — both worth watching the talk drops for; Hexacon is tier-1 RE/exploit and small enough that the whole program is relevant to you.

## Podcasts — the real gap
Tier 1, subscribe today:
- **Behind the Binary** (Google/FLARE, hosted by Josh Stroschein — already in your notes as a YouTube name). Fortnightly interviews with actual reverse engineers about how they got in and how they work. This is the single closest match to "light but on-topic."
- **Day[0]** — you have it in `yt.html`; move it to the audio rotation. Weekly Zi + Specter chat about the week's CVEs, exploits and RE war stories. Technical but conversational, perfect for a walk.
- **Risky Business** (+ **Risky Bulletin**, ~5 min daily) — news with jokes. Already in your notes, no excuse.

Tier 2, binge like a TV show:
- **Malicious Life** (Ran Levi) — narrative history of malware and the people behind it. Stuxnet, Moonlight Maze, the worm era. Closest thing to Darknet Diaries for *malware specifically*.
- **The Lazarus Heist** (BBC) — North Korea, the Bangladesh Bank job, WannaCry. Pure storytelling, zero prerequisites.
- **Click Here** (Recorded Future) — journalism-grade reporting, short episodes.

Tier 3, background noise:
- **Smashing Security** — comedy security news, weekly, zero effort.
- **Security Cryptography Whatever** — snarky crypto/systems; **Oxide and Friends** — low-level hardware/firmware chatter; **Off the Hook** (2600's radio show, weekly since 1988) if you want the old-school hacker-culture vibe.

## Talks that are entertainment, not study
- **Michael Steil — "The Ultimate Game Boy Talk" (33C3)**, then **"The Ultimate Apollo Guidance Computer Talk" (34C3)**. Hardware RE as stand-up comedy. Nothing in your notes comes close on fun-per-minute.
- **fail0verflow — "Console Hacking"** series at CCC (PS3 at 27C3, Switch at 34C3). You have fail0verflow in the CVE lists but not the talks; they're the best annual RE serial there is.
- **Natalie Silvanovich — "Many Tamagotchis Were Harmed in the Making of this Presentation" (29C3)** — reversing a Tamagotchi, and genuinely funny.
- **Ange Albertini — "Funky File Formats" (30C3)** — polyglot files, the PoC||GTFO aesthetic in talk form. Pairs with the `pocorgtfo00.pdf` you just dropped in `bin/`.
- **Deviant Ollam — "Elevator Hacking" / "I'll Let Myself In"** — physical security, played for laughs.
- **DEF CON Hacker Jeopardy** — no redeeming educational value, that's the point.

(You already have Domas and Blazytko, which are the other two must-watch entertainers.)

## Screen, not keyboard
- **Zero Days** (Gibney, 2016) — Stuxnet. The best malware documentary that exists, and it's about an actual binary you could go read about afterward.
- **DEFCON: The Documentary** — free on YouTube.
- **Mr. Robot** for fiction that uses real tools; **Who Am I** (2014, German) and **Hackers** (1995) for the cheese.

## Puzzle games that are secretly RE practice
- **EXAPUNKS** (Zachtronics) — hacking-themed assembly puzzler that ships with an in-game zine. Also **TIS-100** and **Shenzhen I/O**. You mention Zachtronics once in `cves/hn list - re.md`; these deserve a real slot.
- **microcorruption** — you have it listed, but it belongs here rather than in "wargames." It's a puzzle game that happens to teach MSP430.

## Seasonal rituals to put in `timeline.html`
- **SANS Holiday Hack Challenge** — opens early November, runs to early January. Narrative, free, deliberately silly, and the writeups are a genre of their own.
- **Advent of Cyber** (TryHackMe) — one small task a day, Dec 1–25.
- **40C3** — Dec 27–30, Hamburg. Streams free; the RE/hardware track is where the Steil- and fail0verflow-tier talks land.

## Light reading
**Paged Out!** is the answer here — one page per article, by design, and it's already in your notes but unused. Same for **tmpout** (ELF zine, directly on your current ELF kick) and the PoC||GTFO sermons.

---

If I had to pick three to start tonight: subscribe to **Behind the Binary**, open **Flare-On 13 challenge 1**, and queue **The Ultimate Game Boy Talk** for when you're too fried to work.

Want me to add this as a "Fun layer" section in `resources.md` (and fold the seasonal events into `timeline.html`) so it survives past this chat?

Sources: [flare-on.com](https://flare-on.com) · [Flare-On 13 announcement](https://security.googlecloudcommunity.com/community-blog-42/announcing-the-13th-flare-on-challenge-8279) · [Behind the Binary](https://podcasts.apple.com/ie/podcast/behind-the-binary-by-google-cloud-security/id1777589687) · [Hexacon](https://www.hexacon.fr/) · [Ekoparty 2026](https://sessionize.com/ekoparty-security-conference-2026-buenos-aires/) · [Black Hat Europe 2026](https://blackhat.com/upcoming.html) · [40C3 dates](https://edri.org/?p=63429) · [SANS Holiday Hack](https://sans.org/HolidayHack)


---

## Search keywords used to build this
Web searches that produced the facts above (dates, podcast names):
- `Flare-On 13 2026 challenge start date`
- `best malware analysis reverse engineering podcasts 2026`
- `"Behind the Binary" Google Cloud Security podcast Josh Stroschein episodes`
- `security conferences October November December 2026 Hexacon Ekoparty Black Hat Europe 39C3 dates`
- `39C3 Chaos Communication Congress December 2026 dates Hamburg`
- `SANS Holiday Hack Challenge 2026 Advent of Cyber 2026 dates`
