local M = {}

local colors = require("intellij.palette")

M.setup = function()
  return {

    Normal = { bg = colors.bg },
    CursorLine = { bg = "#2f334d" },

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

    -- Dashbord
    SnacksDashboardNormal = { bg = colors.bg },
    SnacksDashboardDesc = { fg = "#86e1fc" },
    SnacksDashboardHeader = { fg = colors.title },
    SnacksDashboardFile = { fg = colors.title },
    SnacksDashboardDir = { fg = "#545c7e" },
    SnacksDashboardIcon = { fg = "#65bcff" },
    SnacksDashboardTitle = { fg = "#82aaff", bold = true },

    -- Picker (/Explorer)
    SnacksPicker = { bg = colors.bg },
    -- SnacksPickerInputSearch = { bg = colors.bg },
    SnacksPickerBorder = { fg = colors.orange, bg = colors.bg },

    DiagnosticUnnecessary = { fg = colors.unused_code },

    -- General LSP
    Comment = { fg = "#7A7E85", italic = true },
    String = { fg = colors.string },
    Keyword = { fg = colors.keyword },
    Statement = { bold = false },

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

    -- typescriptBlock = { fg = colors.test },
    -- typescriptIdentifierName = { fg = colors.test },

    -- ["@lsp.typemod.property.declaration.typescript"] = { fg = colors.variable },
    -- typescriptClassBlock = { fg = "#ff00ff" },

    -- ["@string"] = { fg = "#6AAB73" },
    -- ["@keyword"] = { fg = "#CF8E6D" },
    -- ["@typescriptDecorator"] = { fg = "#ff00ff" },
  }
end

return M
