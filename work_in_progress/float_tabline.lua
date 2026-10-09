-- Float-based tabline sketch (WIP, not yet active).
--
-- Replaces 'mini.tabline' with a height-1 floating window showing buffer tabs:
--   * occludes only its own cells (rest of the top row shows text behind),
--   * translucent over buffer text via 'winblend' (the only true alpha Neovim
--     has; a real tabline row has no text behind it, so it can never blend),
--   * reclaims the tabline screen row ('showtabline' 0 via removing the tabline).
--
-- Context: work_in_progress/float_tabline.md
--
-- To activate later:
--   1. Comment out mini.tabline's setup() in 'plugin/30_mini.lua'
--      (now(function() require('mini.tabline').setup() end), ~line 139),
--      otherwise the real tabline reserves its own row above this float.
--   2. Rename/move this file to 'plugin/50_float_tabline.lua'.
--
-- TODO:
--   * Truncation (e.g. '…') and width capping.
--   * Current-buffer highlighting via highlight groups (not brackets).
--   * Tune 'winblend' and the float's background highlight (needs a bg to blend,
--     e.g. 'NormalFloat' or 'MiniTabline*' groups).
--   * Check zindex against other top-anchored floats (mini.notify, ...).

local buf = vim.api.nvim_create_buf(false, true)
local win = nil

local function close()
  if win and vim.api.nvim_win_is_valid(win) then vim.api.nvim_win_close(win, true) end
  win = nil
end

local function update()
  close()
  local bufs = vim.fn.getbufinfo({ buflisted = 1 })
  if #bufs < 2 then return end -- hide when there's nothing to show

  local cur = vim.api.nvim_get_current_buf()
  local parts = {}
  for _, b in ipairs(bufs) do
    local label = b.name ~= '' and vim.fn.fnamemodify(b.name, ':t') or '[No Name]'
    if b.changed == 1 then label = label .. '+' end
    if b.bufnr == cur then label = '[' .. label .. ']' end
    table.insert(parts, label)
  end

  local text = table.concat(parts, ' ')
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, { text })

  win = vim.api.nvim_open_win(buf, false, {
    relative = 'editor', row = 0, col = 0,
    width = math.min(vim.api.nvim_strwidth(text), vim.o.columns - 2),
    height = 1, border = 'none', style = 'minimal',
    focusable = false, zindex = 50,
  })
  vim.wo[win].winblend = 80 -- make the text behind show through
end

update()
vim.api.nvim_create_autocmd(
  { 'BufAdd', 'BufDelete', 'BufEnter', 'BufModifiedSet', 'VimResized', 'WinEnter' },
  { callback = update }
)
