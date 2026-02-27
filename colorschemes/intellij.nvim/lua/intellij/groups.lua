local M = {}

M.setup = function()
  package.loaded["intellij.my_palette"] = nil
  package.loaded["intellij.matugen"] = nil

  local colors = require("intellij.my_palette")
  local matugen_colors = require("intellij.matugen")
  -- Lualine
  -- local lualine_theme = {
  -- normal = {
  --   a = { bg = colors.gray, fg = colors.black, gui = "bold" },
  --   b = { bg = colors.lightgray, fg = colors.white },
  --   c = { bg = colors.darkgray, fg = colors.gray },
  -- },
  -- insert = {
  --   a = { bg = colors.blue, fg = colors.black, gui = "bold" },
  --   b = { bg = colors.lightgray, fg = colors.white },
  --   c = { bg = colors.lightgray, fg = colors.white },
  -- },
  -- visual = {
  --   a = { bg = colors.tag, fg = colors.black, gui = "bold" },
  --   b = { bg = colors.lightgray, fg = colors.white },
  --   c = { bg = colors.inactivegray, fg = colors.black },
  -- },
  -- replace = {
  --   a = { bg = colors.red, fg = colors.black, gui = "bold" },
  --   b = { bg = colors.lightgray, fg = colors.white },
  --   c = { bg = colors.black, fg = colors.white },
  -- },
  -- command = {
  --   a = { bg = colors.green, fg = colors.black, gui = "bold" },
  --   b = { bg = colors.lightgray, fg = colors.white },
  --   c = { bg = colors.inactivegray, fg = colors.black },
  -- },
  -- inactive = {
  --   a = { bg = colors.darkgray, fg = colors.gray, gui = "bold" },
  --   b = { bg = colors.darkgray, fg = colors.gray },
  --   c = { bg = colors.darkgray, fg = colors.gray },
  -- },
  -- }
  local lualine_theme = require("lualine.themes.tomorrow_night")
  lualine_theme.normal.a.bg = matugen_colors.mPrimary
  lualine_theme.normal.b.bg = matugen_colors.mOnSecondary
  lualine_theme.normal.b.fg = matugen_colors.mSecondary
  lualine_theme.normal.c.bg = matugen_colors.mSurfaceVariant
  lualine_theme.normal.c.fg = matugen_colors.mTertiary

  require("lualine").setup({
    options = {
      theme = lualine_theme,
    },
  })
  return {

    DiagnosticUnnecessary = { fg = colors.unused_code },

    -- Angular
    ["@tag.angular"] = { fg = colors.tag },
    ["@tag.attribute.angular"] = { fg = colors.text },
    ["@tag.delimiter.angular"] = { fg = colors.tag },
    ["@keyword.angular"] = { fg = colors.variable },
    ["@property.angular"] = { fg = colors.class_name },
    ["@boolean.angular"] = { fg = colors.keyword },

    ["@variable.angular"] = { fg = colors.variable },
    ["@punctuation.delimiter.angular"] = { fg = colors.string },
    ["@variable.builtin.angular"] = { fg = colors.variable },
    -- ["@string.angular"] = { fg = colors.string },
    ["@nospell.angular"] = { link = 0 },

    -- HTML
    ["@spell.html"] = { link = 0 },
    ["@tag.html"] = { fg = colors.tag },
    ["@tag.attribute.html"] = { fg = colors.variable },
    ["@tag.delimiter.html"] = { fg = colors.text },
    ["@comment.html"] = { link = "Comment" },

    -- Typescript
    ["@lsp.type.class.typescript"] = { link = 0 },
    ["@lsp.typemod.class.typescript"] = { link = 0 },

    ["@attribute.typescript"] = { fg = colors.decorator },
    ["@constant.builtin.typescript"] = { fg = colors.keyword },
    ["@constructor.typescript"] = { fg = colors.class_name },
    ["@keyword.conditional.typescript"] = { fg = colors.keyword },
    ["@keyword.exception.typescript"] = { fg = colors.keyword },
    ["@keyword.import.typescript"] = { fg = colors.keyword },
    ["@keyword.modifier.typescript"] = { fg = colors.keyword },
    ["@keyword.return.typescript"] = { fg = colors.keyword },
    ["@keyword.operator.typescript"] = { fg = colors.keyword },
    ["@keyword.typescript"] = { fg = colors.keyword },
    ["@keyword.type.typescript"] = { fg = colors.keyword },
    ["@lsp.type.parameter.typescript"] = { fg = colors.text },
    ["@lsp.type.function.typescript"] = { fg = colors.cyan },
    ["@lsp.type.property.typescript"] = { fg = colors.variable },
    ["@lsp.type.interface.typescript"] = { fg = colors.text },
    ["@lsp.type.type.typescript"] = { link = 0 },
    ["@lsp.typemod.parameter.declaration.typescript"] = { fg = colors.text },
    ["@lsp.typemod.class.declaration.typescript"] = { fg = colors.class_name },
    ["@lsp.typemod.property.declaration.typescript"] = { fg = colors.class_name },
    ["@lsp.typemod.member.declaration.typescript"] = { fg = colors.class_name },
    ["@operator.typescript"] = { fg = colors.text },
    ["@punctuation.bracket.typescript"] = { fg = colors.text },
    ["@punctuation.delimiter.typescript"] = { fg = colors.text },
    ["@type.typescript"] = { fg = colors.text },
    ["@type.builtin.typescript"] = { fg = colors.keyword },
    ["@variable.builtin.typescript"] = { fg = colors.keyword },
    ["@variable.member.typescript"] = { fg = colors.variable },
    ["@variable.parameter.typescript"] = { fg = colors.text },

    -- Java
    JavaType = { fg = colors.keyword },
    javaParenT = { fg = colors.test },
    JavaTypeDef = { fg = colors.keyword },
    JavaRepeat = { fg = colors.keyword },
    JavaStatement = { fg = colors.keyword },
    JavaConditional = { fg = colors.keyword },
    JavaAnnotation = { fg = colors.decorator },
    JavaOperator = { fg = colors.keyword },
    JavaCommentTitle = { link = "Comment" },
    ["@attribute.java"] = { fg = colors.decorator },
    ["@variable.java"] = { fg = colors.variable },
    ["@variable.builtin.java"] = { fg = colors.keyword },
    ["@variable.parameter.java"] = { fg = "#f4c990" },
    ["@type.builtin.java"] = { fg = colors.keyword },
    ["@keyword"] = { fg = colors.keyword },
    ["@keyword.conditional.java"] = { fg = colors.keyword },
    ["@keyword.repeat.java"] = { fg = colors.keyword },
    ["@keyword.exception.java"] = { fg = colors.keyword },
    ["@lsp.type.property.java"] = { fg = colors.variable },
    -- ["@lsp.type.parameter.java"] = { fg = "#ffc777" },
    ["@lsp.type.parameter.java"] = { fg = "#f4c990" },
    ["@lsp.type.typeParameter.java"] = { fg = "#16BAAC" },
    ["@lsp.type.method.java"] = { fg = colors.class_name },
    ["@lsp.type.class.java"] = { fg = colors.text },
    ["@lsp.type.interface.java"] = { fg = colors.class_name },
    ["@lsp.type.record.java"] = { link = "@lsp.type.class.java" },
    -- ["@lsp.typemod.parameter.declat"] = { fg = colors.class_name },

    JavaBlockOther = { fg = colors.test },
    -- Dashbord
    -- SnacksDashboardNormal = { bg = colors.bg },
    -- SnacksDashboardDesc = { fg = "#86e1fc" },
    -- SnacksDashboardHeader = { fg = colors.title },
    -- SnacksDashboardFile = { fg = colors.title },
    -- SnacksDashboardDir = { fg = "#545c7e" },
    -- SnacksDashboardIcon = { fg = "#65bcff" },
    -- SnacksDashboardTitle = { fg = "#82aaff", bold = true },
    --
    -- -- Picker (/Explorer)
    -- SnacksPicker = { bg = colors.bg },
    -- -- SnacksPickerInputSearch = { bg = colors.bg },
    -- SnacksPickerBorder = { fg = colors.orange, bg = colors.bg },
    --
    -- DiagnosticUnnecessary = { fg = colors.unused_code },
    --
    -- General LSP
    Comment = { fg = "#7A7E85", italic = true },
    String = { fg = colors.string },
    Keyword = { fg = colors.keyword },
    Statement = { bold = false },
    DiagnosticDeprecated = { strikethrough = false },

    -- Typescript
    typescriptResponseProp = { link = 0 },
    typescriptDOMStorageMethod = { fg = colors.text },
    typescriptStatementKeyword = { fg = colors.keyword },
    typescriptMethoodAccessoor = { fg = colors.keyword },
    typescriptAccessibilityModifier = { fg = colors.keyword },
    typescriptDecorator = { fg = colors.decorator },
    typescriptMember = { fg = colors.variable },
    typescriptIdentifier = { fg = colors.keyword }, -- this.
    typescriptTypeReference = { fg = colors.text },
    typescriptProp = { fg = colors.test },
    typescriptClassBlock = { fg = colors.class_name },
    typescriptIndexExpr = { fg = colors.variable },
    typescriptSymbols = { fg = colors.text },
    typescriptParens = { fg = colors.text },
    typescriptExport = { fg = colors.keyword },
    typescriptImport = { fg = colors.keyword },
    typescriptInterfaceName = { fg = colors.text },
    typescriptPredefinedType = { fg = colors.keyword },

    -- Lua
    ["@keyword.conditional.lua"] = { fg = "#ff757f" },

    -----------------
    ---- GENERAL ----
    -----------------
    Normal = { bg = matugen_colors.mSurface },
    NormalNC = { bg = matugen_colors.mSurface },
    CursorLine = { bg = matugen_colors.mOnPrimary },
    LineNrAbove = { fg = matugen_colors.mTertiary },
    CursorLineNr = { fg = matugen_colors.mPrimary, bold = true },
    LineNrBelow = { fg = matugen_colors.mTertiary },
    DiagnosticSignInfo = { fg = matugen_colors.mPrimary },
    FloatBorder = { fg = matugen_colors.mPrimary },
    Pmenu = { bg = matugen_colors.mSurface },
    NormalFloat = { bg = matugen_colors.mSurface },
    Title = { fg = matugen_colors.mPrimary },
    FloatTitle = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    Directory = { fg = matugen_colors.blue },
    Folded = { bg = matugen_colors.mSuface },

    -- Telescope
    TelescopeNormal = { bg = matugen_colors.mSurface },
    TelescopeBorder = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    TelescopePromptBorder = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    TelescopePromptTitle = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },

    -- Noice
    NoiceCmdlinePopupBorder = { fg = matugen_colors.mPrimary },
    NoiceCmdlinePopupBorderLua = { fg = matugen_colors.mPrimary },
    NoiceMini = { bg = matugen_colors.mSurface },

    -- Snacks Dashbord
    SnacksDashboardNormal = { bg = matugen_colors.mSurface },
    SnacksDashboardDesc = { fg = matugen_colors.mPrimary },
    SnacksDashboardHeader = { fg = matugen_colors.mPrimary },
    SnacksDashboardFile = { fg = matugen_colors.mPrimary },
    SnacksDashboardDir = { fg = matugen_colors.mOutline },
    SnacksDashboardIcon = { fg = matugen_colors.mPrimary },
    SnacksDashboardKey = { fg = colors.mTertiary },
    SnacksDashboardTitle = { fg = matugen_colors.mPrimary, bold = true },
    SnacksDashboardSpecial = { fg = matugen_colors.mPrimary },

    -- Snacks Picker (/Explorer)
    SnacksPicker = { bg = matugen_colors.mSurface },
    -- SnacksPickerCmd = { fg = colors.test },
    SnacksPickerCmdBuiltin = { fg = colors.test },
    SnacksPickerCursorLine = { bg = matugen_colors.mOnSecondary },
    SnacksPickerInputBorder = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    SnacksPickerInputTitle = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    SnacksPickerListCursorLine = { bg = matugen_colors.mOnSecondary },
    SnacksPickerBorder = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    SnacksPickerIcon = { fg = matugen_colors.mPrimary },
    SnacksPickerGitStatusModified = { link = "DiagnosticInfo" },

    -- Snacks Notifier
    SnacksNotifierInfo = { bg = matugen_colors.mSurface },
    SnacksNotifierBorderInfo = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    SnacksNotifierTitleInfo = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },

    SnacksNotifierWarn = { bg = matugen_colors.mSurface },
    SnacksNotifierBorderWarn = { fg = colors.warning, bg = matugen_colors.mSurface },
    SnacksNotifierTitleWarn = { fg = colors.warning, bg = matugen_colors.mSurface },

    SnacksNotifierError = { bg = matugen_colors.mSurface },
    SnacksNotifierBorderError = { fg = matugen_colors.mError, bg = matugen_colors.mSurface },
    SnacksNotifierTitleError = { fg = matugen_colors.mError, bg = matugen_colors.mSurface },

    SnacksNotifierTrace = { bg = matugen_colors.mSurface },
    SnacksNotifierBorderTrace = { fg = matugen_colors.mTertiary, bg = matugen_colors.mSurface },
    SnacksNotifierTitleTrace = { fg = matugen_colors.mTertiary, bg = matugen_colors.mSurface },

    NoicePopupmenu = { bg = colors.test, fg = colors.test },

    -- WhichKey
    WhichKey = { fg = matugen_colors.mTertiary, bg = matugen_colors.mSurface },
    WhichKeyBorder = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    WhichKeyNormal = { bg = matugen_colors.mSurface },
    WhichKeyDesc = { fg = matugen_colors.mTertiary, bg = matugen_colors.mSurface },
    WhichKeyIcon = { fg = matugen_colors.mTertiary, bg = matugen_colors.mSurface },
    WhichKeyValue = { fg = matugen_colors.mTertiary, bg = matugen_colors.mSurface },
    WhichKeyTitle = { fg = matugen_colors.mPrimary, bg = matugen_colors.mSurface },
    WhichKeyGroup = { bg = matugen_colors.mSurface },
    WhichKeySeparator = { fg = matugen_colors.mTertiary, bg = matugen_colors.mSurface },

    TroubleNormal = { link = "Normal" },

    -- MiniHipatternsTodo = { bg = colors.test },
    -- TodoBgTODO = { bg = colors.test },
    TodoSignTODO = { fg = "#0db9d7", bg = matugen_colors.mSurface },

    MiniIconsRed = { fg = matugen_colors.red },
    MiniIconsGreen = { fg = matugen_colors.green },
    MiniIconsYellow = { fg = matugen_colors.yellow },
    MiniIconsBlue = { fg = matugen_colors.blue },
    MiniIconsCyan = { fg = matugen_colors.cyan },
    MiniIconsOrange = { fg = matugen_colors.red },
    MiniIconsAzure = { fg = matugen_colors.blue },

    DiagnosticInfo = { fg = matugen_colors.blue },
    DiagnosticWarn = { fg = matugen_colors.yellow },
    DiagnosticError = { fg = matugen_colors.red },
    DiagnosticHint = { fg = matugen_colors.cyan },
  }
end

return M
