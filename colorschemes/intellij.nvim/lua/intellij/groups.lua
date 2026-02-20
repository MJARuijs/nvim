local M = {}

M.setup = function()
  package.loaded["intellij.palette"] = nil
  local colors = require("intellij.palette")

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
  --   a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
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
  lualine_theme.normal.a.bg = colors.mPrimary
  lualine_theme.normal.b.bg = colors.mOnSecondary
  lualine_theme.normal.b.fg = colors.mSecondary
  lualine_theme.normal.c.bg = colors.mSurfaceVariant
  lualine_theme.normal.c.fg = colors.mTertiary

  require("lualine").setup({
    options = {
      theme = lualine_theme,
    },
  })
  return {

    DiagnosticUnnecessary = { fg = colors.unused_code },

    -- Angular
    ["@tag.angular"] = { fg = colors.yellow },
    ["@tag.attribute.angular"] = { fg = colors.text },
    ["@tag.delimiter.angular"] = { fg = colors.yellow },
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
    ["@tag.html"] = { fg = colors.yellow },
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
    ["@lsp.type.record.java"] = { fg = colors.cyan },
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
    Normal = { bg = colors.mSurface },
    NormalNC = { bg = colors.mSurface },
    CursorLine = { bg = colors.mOnPrimary },
    LineNrAbove = { fg = colors.mTertiary },
    CursorLineNr = { fg = colors.mPrimary, bold = true },
    LineNrBelow = { fg = colors.mTertiary },
    DiagnosticSignInfo = { fg = colors.mPrimary },
    FloatBorder = { fg = colors.mPrimary },
    Pmenu = { bg = colors.mSurface },
    NormalFloat = { bg = colors.mSurface },
    Title = { fg = colors.mPrimary },
    FloatTitle = { fg = colors.mPrimary, bg = colors.mSurface },
    -- Dashbord
    SnacksDashboardNormal = { bg = colors.mSurface },
    SnacksDashboardDesc = { fg = colors.secondary },
    SnacksDashboardHeader = { fg = colors.mPrimary },
    SnacksDashboardFile = { fg = colors.mPrimary },
    SnacksDashboardDir = { fg = colors.mOutline },
    SnacksDashboardIcon = { fg = colors.mPrimary },
    -- SnacksDashboardKey = { fg = colors. },
    SnacksDashboardTitle = { fg = colors.mPrimary, bold = true },
    SnacksDashboardSpecial = { fg = colors.mPrimary },

    -- Picker (/Explorer)
    SnacksPicker = { bg = colors.mSurface },
    -- SnacksPickerCmd = { fg = colors.test },
    SnacksPickerCmdBuiltin = { fg = colors.test },
    SnacksPickerCursorLine = { bg = colors.mOnSecondary },
    SnacksPickerInputBorder = { fg = colors.mPrimary, bg = colors.mSurface },
    SnacksPickerInputTitle = { fg = colors.mPrimary, bg = colors.mSurface },
    SnacksPickerListCursorLine = { bg = colors.mOnSecondary },
    SnacksPickerBorder = { fg = colors.mPrimary, bg = colors.mSurface },
    SnacksPickerIcon = { fg = colors.mPrimary },

    -- Telescope
    TelescopeNormal = { bg = colors.mSurface },
    TelescopeBorder = { fg = colors.mPrimary, bg = colors.mSurface },
    TelescopePromptBorder = { fg = colors.mPrimary, bg = colors.mSurface },
    TelescopePromptTitle = { fg = colors.mPrimary, bg = colors.mSurface },

    -- Noice
    NoiceCmdlinePopupBorder = { fg = colors.mPrimary },
    NoiceCmdlinePopupBorderLua = { fg = colors.mPrimary },
    NoiceMini = { bg = colors.mSurface },

    SnacksNotifierInfo = { bg = colors.mSurface },
    SnacksNotifierBorderInfo = { fg = colors.mPrimary, bg = colors.mSurface },
    SnacksNotifierTitleInfo = { fg = colors.mPrimary, bg = colors.mSurface },

    SnacksNotifierWarn = { bg = colors.mSurface },
    SnacksNotifierBorderWarn = { fg = colors.warning, bg = colors.mSurface },
    SnacksNotifierTitleWarn = { fg = colors.warning, bg = colors.mSurface },

    SnacksNotifierError = { bg = colors.mSurface },
    SnacksNotifierBorderError = { fg = colors.mError, bg = colors.mSurface },
    SnacksNotifierTitleError = { fg = colors.mError, bg = colors.mSurface },

    SnacksNotifierTrace = { bg = colors.mSurface },
    SnacksNotifierBorderTrace = { fg = colors.mTertiary, bg = colors.mSurface },
    SnacksNotifierTitleTrace = { fg = colors.mTertiary, bg = colors.mSurface },

    NoicePopupmenu = { bg = colors.orange, fg = colors.orange },

    -- WhichKey
    WhichKey = { fg = colors.mTertiary, bg = colors.mSurface },
    WhichKeyBorder = { fg = colors.mPrimary, bg = colors.mSurface },
    WhichKeyNormal = { bg = colors.mSurface },
    WhichKeyDesc = { fg = colors.mTertiary, bg = colors.mSurface },
    WhichKeyIcon = { fg = colors.mTertiary, bg = colors.mSurface },
    WhichKeyValue = { fg = colors.mTertiary, bg = colors.mSurface },
    WhichKeyTitle = { fg = colors.mPrimary, bg = colors.mSurface },
    WhichKeyGroup = { bg = colors.mSurface },
    WhichKeySeparator = { fg = colors.mTertiary, bg = colors.mSurface },

    TroubleNormal = { link = "Normal" },

    -- MiniHipatternsTodo = { bg = colors.test },
    -- TodoBgTODO = { bg = colors.test },
    TodoSignTODO = { fg = "#0db9d7", bg = colors.mSurface },
  }
end

return M
