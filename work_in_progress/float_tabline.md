# WIP: Float-based tabline (translucent buffer tabs overlay)

**Status:** Not implemented. Saved as a sketch in `work_in_progress/float_tabline.lua`.
**Date saved:** 2025 (discussion happened in the nvim-minimax config work session).

## Goal

Replace the built-in `mini.tabline` with a custom **height-1 floating window** that
shows the list of buffers, so that:

1. The tab **occludes only its own cells** — the rest of the top row shows the buffer
   text behind it (not a full-width fill area).
2. The tabs are **translucent** — via `'winblend'`, the only true per-area alpha
   blending Neovim has. Buffer text shows through behind the tabs.
3. The dedicated tabline screen row is **reclaimed** — `'showtabline'` is 0, so the
   buffer keeps its full row budget (the float merely overlays the top text row).

## Why `'tabline'` itself can't do this

- The `'tabline'` option is just a string rendered on a fixed, dedicated grid row.
  It can never be a float, never overlay buffer text, and never be translucent.
- The area right of the last tab is drawn by the `MiniTablineFill` highlight group.
  A tabline row has *no text behind it*, so "translucency" is impossible there —
  there's nothing behind to blend with.
- Neovim has no per-line alpha; `'winblend'` applies to floating windows only.
  (In a terminal you *can* set `bg = 'NONE'` on tabline groups so the terminal's
  own transparent background shows through, but that's not text-behind blending.)

## Alternatives considered (from the discussion)

### a) Visually blend the real tabline (not chosen)
Strip the background from `MiniTablineFill` (and optionally `MiniTablineHidden`,
`MiniTablineTabpagesection`) after the colorscheme loads:

```lua
vim.api.nvim_set_hl(0, 'MiniTablineFill', { bg = 'NONE', ctermbg = 'NONE' })
```

Looks like "nothing right of the last tab", but still consumes the full grid row.
Must be re-applied after `colorscheme` (e.g. via a `ColorScheme` autocmd).

### b) Show tabline only when >1 buffer (not chosen)
Autocommand recipe adjusting `'showtabline'` (2 when ≥2 listed buffers, else 0).
Reclaims the whole row when not needed, but the tabline is still opaque when shown.

### c) Slim `mini.tabline` config (available knobs, not chosen)
If we ever revert to `mini.tabline`, its full config is:

```lua
MiniTabline.config = {
  show_icons = true,        -- file icons (via 'mini.icons')
  format = nil,             -- custom label function
  tabpage_section = 'left', -- 'left' / 'right' / 'none'
}
```

- `show_icons = false` — drop icons (biggest label-space saver).
- `format = function(buf_id, label) return ' ' .. label end` — bare labels; the
  default prepends an icon and pads with spaces.
- `tabpage_section = 'none'` — hide the tabpage indicator section entirely
  (or `'right'` to move it to the right edge).
- Modified state is conveyed via `MiniTablineModified*` *highlight* groups, not
  text, so slim labels lose nothing except icons. Special labels still apply:
  `*quickfix*`, `*` (unnamed), `!` (scratch).
- Per-buffer opt-out: `vim.b.minitabline_disable = true`.
- Dim highlights: `vim.api.nvim_set_hl(0, 'MiniTablineHidden', { link = 'Comment' })`.

## Chosen approach (c) → float tabline

- Disable `mini.tabline` — **comment out its `setup()`** in `plugin/30_mini.lua`
  (around line 139: `now(function() require('mini.tabline').setup() end)`),
  otherwise the real tabline reserves its own row above the float.
- Implement as `plugin/50_float_tabline.lua` (current sketch saved in this dir).
- Design decisions from the sketch:
  - `relative = 'editor'`, `row = 0`, `col = 0` — always at the topmost window's
    first text row.
  - `height = 1`, `border = 'none'`, `style = 'minimal'`.
  - `focusable = false` — clicks pass through to the text below; never steals
    interaction (also means **no mouse-clicking of tabs**).
  - `zindex = 50` — may need tuning against other top-anchored floats
    (e.g. `mini.notify` notifications).
  - `vim.wo[win].winblend = 80` — translucency over the text behind.
    Requires the float's buffer to use a highlight *with a background*
    (e.g. `NormalFloat` or the `MiniTabline*` groups), otherwise nothing blends.
  - Hide when fewer than 2 listed buffers.
  - Refresh on: `BufAdd`, `BufDelete`, `BufEnter`, `BufModifiedSet`,
    `VimResized`, `WinEnter`.
  - Current buffer shown with brackets in the sketch; the planned real
    implementation should use highlight groups instead.

## Honest caveats

- It's a custom module to maintain: refresh events, truncation logic, width capping
  (~40 lines, but *our* code).
- No mouse navigation of tabs (`focusable = false`); use key mappings instead
  (`H` / `L` → `:bprevious` / `:bnext` are already mapped in this config's
  `plugin/20_keymaps.lua`).
- Coexists with other top-anchored floats — `zindex` tuning may be needed.
- Window splits: `relative = 'editor'` anchors it over the topmost window's first
  text row, regardless of split layout.
- First text row of the buffer is partially covered (blended) while the float is
  shown — that's the intended behavior, but worth remembering when looking at
  line 1 of a file.

## Next steps

- [ ] Polish the sketch: truncation (`MiniTablineTrunc`-style chars or `…`),
      width capping, current-buffer highlighting via highlight groups.
- [ ] Comment out `mini.tabline`'s `setup()` in `plugin/30_mini.lua`.
- [ ] Test in splits, with unnamed/scratch buffers, and alongside `mini.notify`.
- [ ] Tune `winblend` value and float background highlight.
- [ ] Rename sketch to `plugin/50_float_tabline.lua` when ready.
