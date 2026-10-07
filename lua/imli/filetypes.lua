-- Per-filetype highlight overrides for imli.nvim
-- Uses winhighlight for per-window overrides (no glitch, no global state change)
local M = {}

-- Derived punctuation colors (brighter than fg_dim for structural clarity)
local punct_bracket = "#8a94a0"
local punct_delimiter = "#7a8590"

-- Per-filetype highlight overrides
-- Each key is a filetype, each value is a map of treesitter capture -> highlight opts
M.filetypes = {
  python = {
    ["@keyword"] = { fg = "#b48ead", bold = true },
    ["@keyword.return"] = { fg = "#b48ead", bold = true, italic = true },
    ["@keyword.function"] = { fg = "#b48ead" },
    ["@keyword.type"] = { fg = "#b48ead" },
    ["@keyword.import"] = { fg = "#b48ead" },
    ["@keyword.conditional"] = { fg = "#b48ead" },
    ["@keyword.repeat"] = { fg = "#b48ead" },
    ["@keyword.exception"] = { fg = "#b48ead" },
    ["@function.call"] = { fg = "#9564DD" },
    ["@function.builtin"] = { fg = "#6fb3a8" },
    ["@function.method.call"] = { fg = "#9564DD" },
    ["@type"] = { fg = "#d8b96a" },
    ["@type.builtin"] = { fg = "#d8b96a", italic = true },
    ["@variable.builtin"] = { fg = "#e06c60" },
    ["@variable.parameter"] = { fg = "#e8e0d4", italic = true },
    ["@variable.member"] = { fg = "#e8e0d4" },
    ["@constant"] = { fg = "#d99a5b", bold = true },
    ["@constant.builtin"] = { fg = "#d99a5b" },
    ["@string"] = { fg = "#a3b86b" },
    ["@number"] = { fg = "#d99a5b" },
    ["@boolean"] = { fg = "#d99a5b" },
    ["@operator"] = { fg = "#6fb3a8" },
    ["@punctuation.bracket"] = { fg = punct_bracket },
    ["@punctuation.delimiter"] = { fg = punct_delimiter },
    ["@attribute"] = { fg = "#d8b96a" },
    ["@module"] = { fg = "#d8b96a" },
  },

  lua = {
    ["@keyword"] = { fg = "#b48ead", bold = true },
    ["@keyword.return"] = { fg = "#b48ead", bold = true, italic = true },
    ["@keyword.function"] = { fg = "#b48ead" },
    ["@keyword.repeat"] = { fg = "#b48ead" },
    ["@keyword.conditional"] = { fg = "#b48ead" },
    ["@function.call"] = { fg = "#9564DD" },
    ["@function.builtin"] = { fg = "#6fb3a8" },
    ["@function.method.call"] = { fg = "#9564DD" },
    ["@variable.builtin"] = { fg = "#e06c60" },
    ["@variable.parameter"] = { fg = "#e8e0d4", italic = true },
    ["@variable.member"] = { fg = "#e8e0d4" },
    ["@constant.builtin"] = { fg = "#d99a5b" },
    ["@boolean"] = { fg = "#d99a5b" },
    ["@string"] = { fg = "#a3b86b" },
    ["@number"] = { fg = "#d99a5b" },
    ["@operator"] = { fg = "#6fb3a8" },
    ["@punctuation.bracket"] = { fg = punct_bracket },
    ["@punctuation.delimiter"] = { fg = punct_delimiter },
    ["@module.builtin"] = { fg = "#d8b96a" },
    ["@label"] = { fg = "#6fb3a8" },
  },

  typst = {
    ["@punctuation.special"] = { fg = "#e06c60", bold = true },
    ["@punctuation.bracket"] = { fg = "#8a94a0" },
    ["@punctuation.delimiter"] = { fg = "#6a7a85" },
    ["@keyword"] = { fg = "#b48ead", bold = true, italic = true },
    ["@keyword.import"] = { fg = "#b48ead" },
    ["@keyword.repeat"] = { fg = "#b48ead" },
    ["@keyword.conditional"] = { fg = "#b48ead" },
    ["@function.call"] = { fg = "#9564DD", bold = true },
    ["@string"] = { fg = "#a3b86b" },
    ["@number"] = { fg = "#d99a5b" },
    ["@boolean"] = { fg = "#d99a5b" },
    ["@constant"] = { fg = "#DD6A74" },
    ["@variable.member"] = { fg = "#6fb3a8" },
    ["@markup.heading.1"] = { fg = "#e06c60", bold = true },
    ["@markup.heading.2"] = { fg = "#d99a5b", bold = true },
    ["@markup.heading.3"] = { fg = "#d8b96a", bold = true },
    ["@markup.heading.4"] = { fg = "#a3b86b", bold = true },
    ["@markup.heading.5"] = { fg = "#6fb3a8", bold = true },
    ["@markup.heading.6"] = { fg = "#5c6b7a", bold = true },
    ["@markup.strong"] = { fg = "#e8e0d4", bold = true },
    ["@markup.italic"] = { fg = "#a8c8d8", italic = true },
    ["@markup.raw"] = { fg = "#a3b86b", bg = "#101a20" },
    ["@label"] = { fg = "#6fb3a8" },
    ["@markup.link"] = { fg = "#5b9dff", underline = true },
    ["@markup.link.url"] = { fg = "#6fb3a8", underline = true },
    ["@markup.math"] = { fg = "#6fb3a8" },
    ["@operator"] = { fg = "#6fb3a8" },
  },

  latex = {
    ["@function.latex"] = { fg = "#5D8887", italic = true },
    ["@markup.math"] = { fg = "#5D8887", italic = true },
    ["@punctuation.bracket.latex"] = { fg = "#d99a5b" },
    ["@function.builtin.latex"] = { fg = "#6fb3a8" },
    ["@text.reference.latex"] = { fg = "#5b9dff" },
    ["@text.title.latex"] = { fg = "#d8b96a", bold = true },
    ["@text.emphasis.latex"] = { fg = "#e8e0d4", italic = true },
    ["@text.strong.latex"] = { fg = "#e8e0d4", bold = true },
    ["@text.math.latex"] = { fg = "#6fb3a8" },
    ["@text.environment.latex"] = { fg = "#b48ead" },
    ["@module.latex"] = { fg = "#d8b96a" },
    ["@namespace.latex"] = { fg = "#d8b96a" },
  },

  markdown = {
    ["@markup.heading.1"] = { fg = "#e06c60", bold = true },
    ["@markup.heading.2"] = { fg = "#d99a5b", bold = true },
    ["@markup.heading.3"] = { fg = "#d8b96a", bold = true },
    ["@markup.heading.4"] = { fg = "#a3b86b", bold = true },
    ["@markup.heading.5"] = { fg = "#6fb3a8", bold = true },
    ["@markup.heading.6"] = { fg = "#5c6b7a", bold = true },
    ["@markup.strong"] = { fg = "#e8e0d4", bold = true },
    ["@markup.italic"] = { fg = "#e8e0d4", italic = true },
    ["@markup.strikethrough"] = { fg = "#5c6b7a", strikethrough = true },
    ["@markup.quote"] = { fg = "#5c6b7a", italic = true },
    ["@markup.link"] = { fg = "#5b9dff", underline = true },
    ["@markup.link.url"] = { fg = "#6fb3a8", underline = true },
    ["@markup.link.label.markdown_inline"] = { fg = "#6fb3a8", underline = true },
    ["@markup.raw"] = { fg = "#a3b86b", bg = "#101a20" },
    ["@markup.list"] = { fg = "#6fb3a8" },
    ["@markup.list.unchecked"] = { fg = "#5c6b7a" },
    ["@markup.list.checked"] = { fg = "#a3b86b" },
    ["@markup.math"] = { fg = "#6fb3a8" },
  },

  rust = {
    ["@keyword"] = { fg = "#b48ead", bold = true },
    ["@keyword.return"] = { fg = "#b48ead", bold = true, italic = true },
    ["@keyword.type"] = { fg = "#b48ead" },
    ["@keyword.function"] = { fg = "#b48ead" },
    ["@keyword.import"] = { fg = "#b48ead" },
    ["@keyword.modifier"] = { fg = "#b48ead", italic = true },
    ["@keyword.conditional"] = { fg = "#b48ead" },
    ["@keyword.repeat"] = { fg = "#b48ead" },
    ["@function.call"] = { fg = "#9564DD" },
    ["@function.builtin"] = { fg = "#6fb3a8" },
    ["@function.macro"] = { fg = "#c97b8a" },
    ["@type"] = { fg = "#d8b96a" },
    ["@type.builtin"] = { fg = "#d8b96a", italic = true },
    ["@variable.builtin"] = { fg = "#e06c60" },
    ["@variable.parameter"] = { fg = "#e8e0d4", italic = true },
    ["@variable.member"] = { fg = "#e8e0d4" },
    ["@constant"] = { fg = "#d99a5b", bold = true },
    ["@constant.builtin"] = { fg = "#d99a5b" },
    ["@string"] = { fg = "#a3b86b" },
    ["@number"] = { fg = "#d99a5b" },
    ["@boolean"] = { fg = "#d99a5b" },
    ["@operator"] = { fg = "#6fb3a8" },
    ["@punctuation.bracket"] = { fg = punct_bracket },
    ["@punctuation.delimiter"] = { fg = punct_delimiter },
    ["@attribute"] = { fg = "#d8b96a" },
    ["@module"] = { fg = "#d8b96a" },
    ["@label"] = { fg = "#6fb3a8" },
  },

  bash = {
    ["@keyword.conditional"] = { fg = "#b48ead", bold = true },
    ["@keyword.repeat"] = { fg = "#b48ead", bold = true },
    ["@keyword"] = { fg = "#b48ead", bold = true },
    ["@keyword.import"] = { fg = "#b48ead" },
    ["@keyword.function"] = { fg = "#b48ead" },
    ["@function.builtin"] = { fg = "#6fb3a8" },
    ["@function.call"] = { fg = "#9564DD" },
    ["@variable"] = { fg = "#e8e0d4" },
    ["@variable.builtin"] = { fg = "#e06c60" },
    ["@variable.parameter"] = { fg = "#e8e0d4", italic = true },
    ["@constant"] = { fg = "#d99a5b", bold = true },
    ["@string"] = { fg = "#a3b86b" },
    ["@number"] = { fg = "#d99a5b" },
    ["@operator"] = { fg = "#6fb3a8" },
    ["@punctuation.bracket"] = { fg = punct_bracket },
    ["@punctuation.delimiter"] = { fg = punct_delimiter },
    ["@punctuation.special"] = { fg = "#c97b8a" },
    ["@label"] = { fg = "#6fb3a8" },
  },

  html = {
    ["@tag"] = { fg = "#e06c60" },
    ["@tag.attribute"] = { fg = "#d8b96a" },
    ["@tag.delimiter"] = { fg = "#5c6b7a" },
    ["@string"] = { fg = "#a3b86b" },
    ["@string.special"] = { fg = "#6fb3a8" },
    ["@constant"] = { fg = "#d99a5b", bold = true },
    ["@character.special"] = { fg = "#6fb3a8" },
  },

  css = {
    ["@tag"] = { fg = "#e06c60" },
    ["@tag.attribute"] = { fg = "#d8b96a" },
    ["@type"] = { fg = "#d8b96a" },
    ["@type.builtin"] = { fg = "#d8b96a", italic = true },
    ["@property"] = { fg = "#e8e0d4" },
    ["@variable"] = { fg = "#e8e0d4" },
    ["@variable.parameter"] = { fg = "#e8e0d4", italic = true },
    ["@string"] = { fg = "#a3b86b" },
    ["@number"] = { fg = "#d99a5b" },
    ["@operator"] = { fg = "#6fb3a8" },
    ["@punctuation.bracket"] = { fg = punct_bracket },
    ["@punctuation.delimiter"] = { fg = punct_delimiter },
    ["@attribute"] = { fg = "#d8b96a" },
    ["@function"] = { fg = "#9564DD" },
    ["@keyword.directive"] = { fg = "#b48ead", bold = true },
    ["@keyword.import"] = { fg = "#b48ead" },
    ["@keyword.modifier"] = { fg = "#b48ead", italic = true },
    ["@keyword.operator"] = { fg = "#6fb3a8" },
    ["@module"] = { fg = "#d8b96a" },
    ["@constant"] = { fg = "#d99a5b", bold = true },
  },

  mojo = {
    ["@keyword"] = { fg = "#b48ead", bold = true },
    ["@keyword.return"] = { fg = "#b48ead", bold = true, italic = true },
    ["@keyword.function"] = { fg = "#b48ead" },
    ["@keyword.type"] = { fg = "#b48ead" },
    ["@keyword.import"] = { fg = "#b48ead" },
    ["@keyword.conditional"] = { fg = "#b48ead" },
    ["@keyword.repeat"] = { fg = "#b48ead" },
    ["@keyword.exception"] = { fg = "#b48ead" },
    ["@function.call"] = { fg = "#9564DD" },
    ["@function.builtin"] = { fg = "#6fb3a8" },
    ["@function.method.call"] = { fg = "#9564DD" },
    ["@type"] = { fg = "#d8b96a" },
    ["@type.builtin"] = { fg = "#d8b96a", italic = true },
    ["@variable.builtin"] = { fg = "#e06c60" },
    ["@variable.parameter"] = { fg = "#e8e0d4", italic = true },
    ["@variable.member"] = { fg = "#e8e0d4" },
    ["@constant"] = { fg = "#d99a5b", bold = true },
    ["@constant.builtin"] = { fg = "#d99a5b" },
    ["@string"] = { fg = "#a3b86b" },
    ["@number"] = { fg = "#d99a5b" },
    ["@boolean"] = { fg = "#d99a5b" },
    ["@operator"] = { fg = "#6fb3a8" },
    ["@punctuation.bracket"] = { fg = punct_bracket },
    ["@punctuation.delimiter"] = { fg = punct_delimiter },
    ["@attribute"] = { fg = "#d8b96a" },
    ["@module"] = { fg = "#d8b96a" },
  },

  hyprlang = {
    ["@property"] = { fg = "#e8e0d4" },
    ["@variable"] = { fg = "#e8e0d4" },
    ["@string"] = { fg = "#a3b86b" },
    ["@number"] = { fg = "#d99a5b" },
    ["@operator"] = { fg = "#6fb3a8" },
    ["@punctuation.bracket"] = { fg = punct_bracket },
    ["@punctuation.delimiter"] = { fg = punct_delimiter },
  },
}

-- Cache for created highlight groups
local cache = {}

-- Get or create a target highlight group
local function target_group(ft, capture)
  local key = ft .. "_" .. capture
  if not cache[key] then
    local name = "ImliFt" .. ft .. capture:gsub("[^%w]", "_")
    vim.api.nvim_set_hl(0, name, M.filetypes[ft][capture])
    cache[key] = name
  end
  return cache[key]
end

-- Apply overrides to a window
function M.apply(win, ft)
  local cfg = M.filetypes[ft]
  local parts = {}

  if cfg then
    for capture, _ in pairs(cfg) do
      table.insert(parts, capture .. ":" .. target_group(ft, capture))
    end
  end

  -- Get current winhighlight, remove our managed entries, add new ones
  local current = vim.wo[win].winhighlight or ""
  local managed = {}
  for _, part in ipairs(parts) do
    local override = part:match(":(.+)$")
    if override then
      managed[override] = true
    end
  end

  local filtered = {}
  for entry in current:gmatch("[^,]+") do
    local override = entry:match(":(.+)$")
    if not override or not managed[override] then
      table.insert(filtered, entry)
    end
  end

  for _, part in ipairs(parts) do
    table.insert(filtered, part)
  end

  vim.wo[win].winhighlight = table.concat(filtered, ",")
end

-- Setup autocmds
function M.setup()
  vim.api.nvim_create_autocmd({ "BufWinEnter", "FileType" }, {
    callback = function(args)
      local win = vim.api.nvim_get_current_win()
      local ft = vim.bo[args.buf].filetype
      M.apply(win, ft)
    end,
  })
end

return M
