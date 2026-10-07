-- Palette for imli.nvim
local M = {}

-- warm dark, ember/coffee tones
M.dark = {
  bg        = "#0b1418",
  bg_alt    = "#101a20",
  fg        = "#e8e0d4",
  fg_dim    = "#5c6b7a",
  comment   = "#64737f",
  red       = "#e06c60",
  orange    = "#d99a5b",
  yellow    = "#d8b96a",
  green     = "#a3b86b",
  cyan      = "#6fb3a8",
  blue      = "#5b9dff",
  purple    = "#b48ead",
  magenta   = "#c97b8a",
  selection = "#2a3a44",
  border    = "#606676",
}

-- warm light, cream paper
M.light = {
  bg        = "#e7dfd2",
  bg_alt    = "#f2ede4",
  fg        = "#4a4238",
  fg_dim    = "#8b97a5",
  comment   = "#77838f",
  red       = "#b4463c",
  orange    = "#a8641f",
  yellow    = "#8a6d1f",
  green     = "#5e7a2f",
  cyan      = "#2f7a70",
  blue      = "#2f6fd0",
  purple    = "#7e5a8e",
  magenta   = "#a35262",
  selection = "#dcd2bf",
  border    = "#c2b6a2",
}

M.get = function()
  return vim.o.background == "light" and M.light or M.dark
end

-- blend fg toward the background by `t` (0 = fg only, 1 = bg only)
M.fade = function(fg, bg, t)
  local function hex(c)
    return tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16)
  end
  local fr, fg_, fb = hex(fg)
  local br, bg_, bb = hex(bg)
  return string.format("#%02x%02x%02x",
    math.floor(fr + (br - fr) * t + 0.5),
    math.floor(fg_ + (bg_ - fg_) * t + 0.5),
    math.floor(fb + (bb - fb) * t + 0.5))
end

return M
