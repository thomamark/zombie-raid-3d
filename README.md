# Zombie Raid 3D 🧟 — play on the iPad

A 3D first-person zombie game. Waves of goofy blocky zombies shamble toward you
across the yard — punch them, bonk them, and blast them before they get you.
Start with your fists and unlock bigger and sillier weapons as your score climbs.
Kid-friendly: zombies pop into green goo, no blood.

## Maps

Pick on the title screen: 🏡 **Backyard** (sunset), 🪦 **Graveyard** (spooky night
with pumpkins), 🏖️ **Beach** (palms and ocean), ⛄ **Snow** (pines and snowmen).

## Weapons (unlock by scoring points)

Guns use ammo — grab 📦 boxes dropped by zombies (and a top-up every cleared
wave). Fists and bat never run out.

| Weapon | Unlocks at |
|---|---|
| 👊 Fists | start |
| 🏏 Baseball Bat | 80 |
| 🔫 Slime Blaster | 220 |
| ⚡ Zap Zapper (rapid fire) | 450 |
| 🏀 Bounce Ball Gun (bounces through crowds) | 700 |
| 🍇 Goo Shotgun (5-pellet spread) | 1000 |
| 🐱 Cat Slingshot (MEOW, big knockback) | 1400 |
| ❄️ Freeze Ray (freezes zombies) | 1800 |
| 🌮 Taco Cannon (splash-damage tacos) | 2300 |
| 🚀 Boom Launcher (explosions!) | 2900 |
| 🍔 Burger Blaster (plows through rows) | 3600 |
| 💫 Mega Laser (pierces everything in the line) | 4400 |
| 💨 Fart Cannon (cone of stink + mega knockback) | 5300 |
| ☄️ Star Storm (meteors rain down) | 6500 |

Grab ❤️ hearts dropped by big zombies to heal. Boss zombies every 5th wave
(two at wave 10+!). Watch out for yellow **spitter** zombies from wave 5 —
they lob goo at you from a distance. Waves get bigger, faster, and meaner
as you go.

## Leaderboard & admin mode

Top-10 scores are saved on the device (each iPad/computer keeps its own list) —
enter a name after a good run. The ⚙️ button opens admin mode (password
protected): god mode, all weapons, full ammo, skip wave, and more. Using any
admin tool disqualifies that run from the leaderboard.

## Controls

**iPad:** left thumb = move (virtual joystick) • right thumb = look • big 💥 button = attack
• tap the weapon icons to switch.

**Mac/PC:** WASD = move • mouse = look • click = attack • keys 1–6 = switch weapons.

## Play it on the iPad (local server)

Both the Mac and the iPad must be on the **same WiFi**.

1. **Double-click `start-server.command`** in this folder.
   - A Terminal window opens and prints an address like `http://192.168.4.51:8000`.
   - The first time, macOS may ask permission to run it — see "First-time setup" below.
2. On the **iPad**, open **Safari** and type that address in.
3. Tap **PLAY**!
4. Optional: in Safari tap **Share → Add to Home Screen** to get a full-screen
   app icon (no browser bars).

Leave the Terminal window open while he plays. Close it (or press **Control-C**)
to stop the server.

## First-time setup (only once)

If double-clicking doesn't run it, make the script executable:

1. Open **Terminal** (Applications → Utilities → Terminal).
2. Run:

   ```
   chmod +x "/Users/mrthomas/claude-src/humans-vs-zombies-raid/start-server.command"
   ```

Then double-clicking will work from now on.

You can also just start it manually anytime — in Terminal:

```
cd "/Users/mrthomas/claude-src/humans-vs-zombies-raid"
python3 -m http.server 8000
```

Find your Mac's IP with: `ipconfig getifaddr en0`

## Updating the game

Whenever the game changes, just **refresh Safari** on the iPad — no need to
restart the server. (If a change doesn't show up, close the Safari tab and
reopen the address, since iOS caches aggressively.)

## Files

- `index.html` — the whole game (one file).
- `three.min.js` — the 3D engine (Three.js), served locally so no internet is needed.
- `start-server.command` — double-click to serve it on your WiFi.
- `zombie-pop-classic.html` — the original 2D tap-to-pop game, still playable at
  `http://<your-ip>:8000/zombie-pop-classic.html`.
