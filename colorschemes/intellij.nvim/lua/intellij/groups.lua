local M = {}

local colors = require("intellij.palette")

M.setup = function()
  return {

    Normal = { bg = colors.bg },
    CursorLine = { bg = "#2f334d" },

    ["@lsp.type.class.typescript"] = { link = 0 },
    ["@lsp.typemod.class.typescript"] = { link = 0 },
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
