local M = {}

local colors = require("intellij.palette")

M.setup = function()
  return {

    DiagnosticUnnecessary = { fg = colors.unused_code },

    -- Angular
    ["@tag.angular"] = { fg = colors.yellow },
    ["@tag.attribute.angular"] = { fg = colors.text },
    ["@tag.delimiter.angular"] = { fg = colors.text },
    ["@keyword.angular"] = { fg = colors.variable },
    ["@property.angular"] = { fg = colors.class_name },
    ["@boolean.angular"] = { fg = colors.keyword },

    ["@variable.angular"] = { fg = colors.variable },
    ["@punctuation.delimiter.angular"] = { fg = colors.string },
    ["@variable.builtin.angular"] = { fg = colors.variable },
    -- ["@nospell.angular"] = { fg = colors.test },

    -- HTML
    ["@spell.html"] = { link = 0 },
    ["@tag.html"] = { fg = colors.yellow },
    ["@tag.attribute.html"] = { fg = colors.variable },
    ["@tag.delimiter.html"] = { fg = colors.text },
    -- ["@spell.html"] = { fg = colors.test },
    ["@comment.html"] = { fg = colors.comment },

    -- Typescript
    ["@lsp.type.class.typescript"] = { link = 0 },
    ["@lsp.typemod.class.typescript"] = { link = 0 },
    ["@keyword.modifier.typescript"] = { link = 0 },

    ["@attribute.typescript"] = { fg = colors.decorator },
    ["@constant.builtin.typescript"] = { fg = colors.keyword },
    ["@constructor.typescript"] = { fg = colors.class_name },
    ["@keyword.conditional.typescript"] = { fg = colors.keyword },
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
    ["@keyword"] = { fg = colors.keyword },
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
    Normal = { bg = colors.surface },
    NormalNC = { bg = colors.surface },
    CursorLine = { bg = colors.on_primary },
    LineNrAbove = { fg = colors.tertiary },
    CursorLineNr = { fg = colors.primary, bold = true },
    LineNrBelow = { fg = colors.tertiary },
    DiagnosticSignInfo = { fg = colors.primary },
    FloatBorder = { fg = colors.primary },
    Pmenu = { bg = colors.surface },
    NormalFloat = { bg = colors.surface },
    Title = { fg = colors.primary },
    FloatTitle = { fg = colors.primary, bg = colors.surface },
    -- Dashbord
    SnacksDashboardNormal = { bg = colors.surface },
    SnacksDashboardDesc = { fg = colors.secondary },
    SnacksDashboardHeader = { fg = colors.primary },
    SnacksDashboardFile = { fg = colors.primary },
    SnacksDashboardDir = { fg = "#545c7e" },
    SnacksDashboardIcon = { fg = colors.primary },
    -- SnacksDashboardKey = { fg = colors. },
    SnacksDashboardTitle = { fg = colors.primary, bold = true },
    SnacksDashboardSpecial = { fg = colors.primary },

    -- Picker (/Explorer)
    SnacksPicker = { bg = colors.surface },
    -- SnacksPickerCmd = { fg = colors.test },
    SnacksPickerCmdBuiltin = { fg = colors.test },
    SnacksPickerCursorLine = { bg = colors.on_secondary },
    SnacksPickerInputBorder = { fg = colors.primary, bg = colors.surface },
    SnacksPickerInputTitle = { fg = colors.primary, bg = colors.surface },
    SnacksPickerListCursorLine = { bg = colors.on_secondary },
    SnacksPickerBorder = { fg = colors.primary, bg = colors.surface },
    SnacksPickerIcon = { fg = colors.primary },

    -- Telescope
    TelescopeNormal = { bg = colors.surface },
    TelescopeBorder = { fg = colors.primary, bg = colors.surface },
    TelescopePromptBorder = { fg = colors.primary, bg = colors.surface },
    TelescopePromptTitle = { fg = colors.primary, bg = colors.surface },

    -- Noice
    NoiceCmdlinePopupBorder = { fg = colors.primary },
    NoiceCmdlinePopupBorderLua = { fg = colors.primary },
    NoiceMini = { bg = colors.surface },

    SnacksNotifierInfo = { bg = colors.surface },
    SnacksNotifierBorderInfo = { fg = colors.primary, bg = colors.surface },
    SnacksNotifierTitleInfo = { fg = colors.primary, bg = colors.surface },

    SnacksNotifierWarn = { bg = colors.surface },
    SnacksNotifierBorderWarn = { fg = colors.warning, bg = colors.surface },
    SnacksNotifierTitleWarn = { fg = colors.warning, bg = colors.surface },

    SnacksNotifierError = { bg = colors.surface },
    SnacksNotifierBorderError = { fg = colors.error, bg = colors.surface },
    SnacksNotifierTitleError = { fg = colors.error, bg = colors.surface },

    SnacksNotifierTrace = { bg = colors.surface },
    SnacksNotifierBorderTrace = { fg = colors.tertiary, bg = colors.surface },
    SnacksNotifierTitleTrace = { fg = colors.tertiary, bg = colors.surface },

    NoicePopupmenu = { bg = colors.orange, fg = colors.orange },

    -- WhichKey
    WhichKey = { fg = colors.tertiary, bg = colors.surface },
    WhichKeyBorder = { fg = colors.primary, bg = colors.surface },
    WhichKeyNormal = { bg = colors.surface },
    WhichKeyDesc = { fg = colors.tertiary, bg = colors.surface },
    WhichKeyIcon = { fg = colors.tertiary, bg = colors.surface },
    WhichKeyValue = { fg = colors.tertiary, bg = colors.surface },
    WhichKeyTitle = { fg = colors.primary, bg = colors.surface },
    WhichKeyGroup = { bg = colors.surface },
    WhichKeySeparator = { fg = colors.tertiary, bg = colors.surface },

    TroubleNormal = { link = "Normal" },

    -- Lualine
    lualine_a_insert = { fg = colors.test, bg = colors.primary },
    lualine_a_normal = { fg = colors.test, bg = colors.primary },
  }
end

return M
