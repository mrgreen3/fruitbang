# ROADMAP

## Vision

FruitBang is a minimal, developer-focused Arch Linux live ISO. It is not a full desktop environment and does not pretend to be. The goal is a clean, keyboard-driven base that gets out of a developer's way — form and function over candy.

Think of it as a lightweight alternative to Omarchy: same opinionated philosophy, far less weight. Target ISO size: **2GB max**.

## Core Stack

| Component | Choice | Reason |
|-----------|--------|--------|
| Compositor | Mango (tiling + floating) | Lightweight dwl-based, Sway-like config, no animations |
| Launcher | rofi | Wayland-native, scriptable, no GTK4 dependency |
| Terminal | foot | Fast, minimal |
| Browser | Firefox | Open source, privacy-respecting, no Google dependency |
| Editor | Neovim | The dev tool |
| VCS | git + github-cli | Standard dev tooling |
| Bar | Waybar (minimal config) | Clock, workspaces only — no clutter |
| AUR | yay (via install script) | Full AUR access on demand, pulls base-devel as needed |
| Theme | Solid colour background, consistent accent | Beauty through restraint — see issue #4 |

## Philosophy

- Every component earns its place
- No bloat, no assumptions about what developers want
- Keyboard-driven by default
- Users install what they need via yay — nothing is pre-assumed
- Open source all the way down

## Done

- [x] Arch live ISO based on ArchBang
- [x] Mango Wayland stack (waybar, foot, rofi-wayland, swaybg)
- [x] NetworkManager with nm-applet
- [x] ABI browser-based installer integrated
- [x] Full desktop config (waybar colours, keybindings, menu, wallpaper)
- [x] fruitbang.install:7777 hostname alias for installer

## v0.1 — Minimal Base (current)

- [ ] Finalise package list against core stack above
- [ ] Swap Chromium for Firefox
- [ ] Strip Waybar to minimal config (clock + workspaces)
- [ ] Configure Mango with Sway-like keybindings, no animations
- [ ] yay install script bootstraps base-devel and AUR access
- [ ] Audio (pipewire/wireplumber)
- [ ] Confirm ISO builds cleanly under 2GB

## v0.2 — Dev Theme

- [ ] Minimal dev-style theme — solid colour background (issue #4)
- [ ] Consistent accent colour across Waybar, rofi, foot, Mango borders
- [ ] Dark background, high-contrast text, single accent for focus
- [ ] No custom fonts or icon packs beyond shipped defaults
- [ ] rofi "Setup guide" action pointing to duck.ai or Perplexity

## v0.3 — Polish

- [ ] Branding pass — name, logo, colours consistent across ISO
- [ ] nm-applet wired up in Waybar
- [ ] rofi theming consistent with dev palette
- [ ] Accessibility options (font size, contrast)
- [ ] Offline vs online install mode option

## v1.0 — Stable Release

- [ ] FruitBang established as primary Arch Linux live ISO
- [ ] Migrate archbang and fruitbang repos from Codeberg to GitHub confirmed
- [ ] Retire ~/archbang repo after migration confirmed
- [ ] Port/retire abinstall — ABI becomes canonical installer
- [ ] Release announcement on archbang.org

## Backlog / Ideas

- [ ] rofi dynamic menus wired to system state
- [ ] Post-install greenclaw integration (optional, user-driven)
- [ ] Profile scripts for common dev setups (web, Python, Rust) — not bundled, just documented
