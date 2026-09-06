-- ============================================================
-- NEOVIM — GRUVBOX DARK THEME
-- Matching Kitty / Berserk setup
-- ============================================================

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "gruvbox-berserk"

-- ============================================================
-- PALETTE
-- ============================================================

local colors = {
  -- Background
  bg           = "#1d2021", -- Gruvbox dark hard
  bg_dark      = "#282828", -- Panels / cursor line
  bg_highlight = "#3c3836", -- Selection

  -- Foreground
  fg           = "#ebdbb2", -- Main text
  fg_bright    = "#fbf1c7", -- Bright text
  comment      = "#928374", -- Comments

  -- Gruvbox colors
  red          = "#cc241d",
  red_bright   = "#fb4934",
  orange       = "#d65d0e",
  orange_bright= "#fe8019",

  yellow       = "#d79921",
  yellow_bright= "#fabd2f",

  green        = "#98971a",
  green_bright = "#b8bb26",

  aqua         = "#689d6a",
  aqua_bright  = "#8ec07c",

  blue         = "#458588",
  blue_bright  = "#83a598",

  purple       = "#b16286",
  purple_bright= "#d3869b",

  brown        = "#504945",
}

-- ============================================================
-- HIGHLIGHTS
-- ============================================================

local highlights = {

  -- ----------------------------------------------------------
  -- EDITOR
  -- ----------------------------------------------------------

  Normal = {
    fg = colors.fg,
    bg = colors.bg,
  },

  NormalNC = {
    fg = colors.fg,
    bg = colors.bg,
  },

  Cursor = {
    fg = colors.bg,
    bg = colors.orange_bright,
  },

  CursorLine = {
    bg = colors.bg_dark,
  },

  CursorLineNr = {
    fg = colors.orange_bright,
    bold = true,
  },

  LineNr = {
    fg = colors.comment,
  },

  SignColumn = {
    fg = colors.comment,
    bg = colors.bg,
  },

  FoldColumn = {
    fg = colors.comment,
    bg = colors.bg,
  },

  -- ----------------------------------------------------------
  -- SYNTAX
  -- ----------------------------------------------------------

  Comment = {
    fg = colors.comment,
    italic = true,
  },

  Constant = {
    fg = colors.purple_bright,
  },

  String = {
    fg = colors.green_bright,
  },

  Character = {
    fg = colors.green_bright,
  },

  Number = {
    fg = colors.purple_bright,
  },

  Boolean = {
    fg = colors.purple_bright,
    bold = true,
  },

  Float = {
    fg = colors.purple_bright,
  },

  Identifier = {
    fg = colors.blue_bright,
  },

  Function = {
    fg = colors.orange_bright,
    bold = true,
  },

  Statement = {
    fg = colors.red_bright,
  },

  Conditional = {
    fg = colors.red_bright,
    bold = true,
  },

  Repeat = {
    fg = colors.red_bright,
    bold = true,
  },

  Label = {
    fg = colors.red_bright,
  },

  Operator = {
    fg = colors.orange_bright,
  },

  Keyword = {
    fg = colors.red_bright,
    bold = true,
  },

  Exception = {
    fg = colors.red_bright,
    bold = true,
  },

  PreProc = {
    fg = colors.aqua_bright,
  },

  Include = {
    fg = colors.aqua_bright,
  },

  Define = {
    fg = colors.aqua_bright,
  },

  Type = {
    fg = colors.yellow_bright,
    bold = true,
  },

  StorageClass = {
    fg = colors.yellow_bright,
  },

  Structure = {
    fg = colors.yellow_bright,
  },

  Typedef = {
    fg = colors.yellow_bright,
  },

  Special = {
    fg = colors.orange_bright,
  },

  SpecialChar = {
    fg = colors.orange_bright,
  },

  Delimiter = {
    fg = colors.fg,
  },

  Underlined = {
    underline = true,
  },

  -- ----------------------------------------------------------
  -- ERRORS / TODO
  -- ----------------------------------------------------------

  Error = {
    fg = colors.fg_bright,
    bg = colors.red,
    bold = true,
  },

  ErrorMsg = {
    fg = colors.red_bright,
    bold = true,
  },

  WarningMsg = {
    fg = colors.yellow_bright,
    bold = true,
  },

  Todo = {
    fg = colors.bg,
    bg = colors.yellow_bright,
    bold = true,
  },

  -- ----------------------------------------------------------
  -- SELECTION / SEARCH
  -- ----------------------------------------------------------

  Visual = {
    fg = colors.fg_bright,
    bg = colors.brown,
  },

  Search = {
    fg = colors.bg,
    bg = colors.yellow_bright,
  },

  IncSearch = {
    fg = colors.bg,
    bg = colors.orange_bright,
  },

  Substitute = {
    fg = colors.bg,
    bg = colors.red_bright,
  },

  -- ----------------------------------------------------------
  -- POPUPS
  -- ----------------------------------------------------------

  Pmenu = {
    fg = colors.fg,
    bg = colors.bg_dark,
  },

  PmenuSel = {
    fg = colors.bg,
    bg = colors.orange_bright,
    bold = true,
  },

  PmenuSbar = {
    bg = colors.brown,
  },

  PmenuThumb = {
    bg = colors.comment,
  },

  -- ----------------------------------------------------------
  -- SPLITS / BORDERS
  -- ----------------------------------------------------------

  VertSplit = {
    fg = colors.brown,
    bg = colors.bg,
  },

  WinSeparator = {
    fg = colors.brown,
    bg = colors.bg,
  },

  -- ----------------------------------------------------------
  -- STATUSLINE
  -- ----------------------------------------------------------

  StatusLine = {
    fg = colors.fg,
    bg = colors.bg_dark,
  },

  StatusLineNC = {
    fg = colors.comment,
    bg = colors.bg_dark,
  },

  -- ----------------------------------------------------------
  -- TABS
  -- ----------------------------------------------------------

  TabLine = {
    fg = colors.comment,
    bg = colors.bg_dark,
  },

  TabLineFill = {
    bg = colors.bg,
  },

  TabLineSel = {
    fg = colors.fg_bright,
    bg = colors.brown,
    bold = true,
  },

  -- ----------------------------------------------------------
  -- FOLDING
  -- ----------------------------------------------------------

  Folded = {
    fg = colors.comment,
    bg = colors.bg_dark,
  },

  -- ----------------------------------------------------------
  -- DIAGNOSTICS
  -- ----------------------------------------------------------

  DiagnosticError = {
    fg = colors.red_bright,
  },

  DiagnosticWarn = {
    fg = colors.yellow_bright,
  },

  DiagnosticInfo = {
    fg = colors.blue_bright,
  },

  DiagnosticHint = {
    fg = colors.aqua_bright,
  },

  -- ----------------------------------------------------------
  -- GIT SIGNS
  -- ----------------------------------------------------------

  SignAdd = {
    fg = colors.green_bright,
    bg = colors.bg,
  },

  SignChange = {
    fg = colors.yellow_bright,
    bg = colors.bg,
  },

  SignDelete = {
    fg = colors.red_bright,
    bg = colors.bg,
  },
}

-- ============================================================
-- APPLY
-- ============================================================

for group, settings in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, settings)
end
