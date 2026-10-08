local M = {}

M.options = {
  italic_comments = true,
  comment_opacity = 1.0, -- 0.1 (barely visible) .. 1.0 (full color)
  transparent_bg = false, -- true = clear all editor backgrounds (terminal shows through)
  filetypes = nil, -- nil = use defaults from imli.filetypes, or provide your own table
}

M.setup = function(opts)
  M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

M.load = function()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "imli"

  require("imli.groups").setup()

  -- Per-filetype overrides (winhighlight-based, no glitch)
  local ft = require("imli.filetypes")
  if M.options.filetypes then
    ft.filetypes = M.options.filetypes
  end
  ft.setup()

  -- Terminal colors
  local p = require("imli.palette").get()
  vim.g.terminal_color_0  = p.bg_alt
  vim.g.terminal_color_1  = p.red
  vim.g.terminal_color_2  = p.green
  vim.g.terminal_color_3  = p.yellow
  vim.g.terminal_color_4  = p.blue
  vim.g.terminal_color_5  = p.purple
  vim.g.terminal_color_6  = p.cyan
  vim.g.terminal_color_7  = p.fg
  vim.g.terminal_color_8  = p.fg_dim
  vim.g.terminal_color_9  = p.red
  vim.g.terminal_color_10 = p.green
  vim.g.terminal_color_11 = p.yellow
  vim.g.terminal_color_12 = p.blue
  vim.g.terminal_color_13 = p.purple
  vim.g.terminal_color_14 = p.cyan
  vim.g.terminal_color_15 = p.fg
end

return M
