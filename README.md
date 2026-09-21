# No Background Dark

> Clean Minecraft GUI without blur and dark overlays

A lightweight shader-based resource pack that removes GUI background blur and dark tinting for a cleaner, more transparent interface experience.

## What It Does

### Removed
- ❌ GUI background blur
- ❌ Dark overlay tint on menus
- ❌ Vignette effect

### Result
- ✨ Crystal-clear GUI backgrounds
- 🎯 Better visibility of your world while in menus
- 🪶 Zero performance impact

## Installation

1. Download the latest release
2. Place `.zip` file in `.minecraft/resourcepacks/`
3. In Minecraft: **Options** → **Resource Packs** → Select **No Background Dark**
4. Click **Done**

## Compatibility

| Minecraft Version | Status |
|-------------------|--------|
| 1.21.11+          | ✅ Full support |
| 1.21.6 - 1.21.10  | ✅ Full support |
| 1.20.5+           | ✅ Compatible (format 15+) |

Works with **Sodium**, **Iris**, and most optimization mods.

## Technical Details

<details>
<summary>How it works</summary>

Modifies core GUI shaders to:
- Set alpha channel to `0.0` for dark backgrounds (RGB ≤ 0.1, Alpha ≥ 0.5)
- Replace blur post-processing with direct blit passes
- Use transparent vignette texture

Files modified:
- `assets/minecraft/shaders/core/gui.vsh`
- `assets/minecraft/shaders/core/rendertype_gui_overlay.vsh`
- `assets/minecraft/shaders/post/transparency.json`
- `assets/minecraft/textures/misc/vignette.png`

</details>

## Building from Source

```bash
# Clone
git clone https://github.com/yourusername/NoBackgroundDark.git

# Create .zip (keep folder structure intact)
# On Windows: Right-click folder → Send to → Compressed folder
# On Linux/Mac:
cd NoBackgroundDark
zip -r NoBackgroundDark.zip assets/ 1.21.11/ 1.21.6-1.21.10/ pack.mcmeta pack.png
```

## License

Free to use and modify. Credit appreciated but not required.

## Author

**nuel** - Clean UI enthusiast

---

<p align="center">
  <sub>Made for players who prefer clean interfaces over decorative overlays</sub>
</p>
