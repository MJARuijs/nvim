local M = {}

local colors = require("intellij.palette")

M.setup = function()
  return {

    Normal = { fg = colors.background },

    -- Dashbord
    SnacksDashboardNormal = { bg = colors.bg },
    SnacksDashboardDesc = { fg = "#86e1fc" },
    SnacksDashboardHeader = { fg = colors.title },
    SnacksDashboardFile = { fg = colors.title },
    SnacksDashboardDir = { fg = "#545c7e" },
    SnacksDashboardIcon = { fg = "#65bcff" },
    SnacksDashboardTitle = { fg = "#82aaff", bold = true },

    -- General LSP
    Comment = { fg = "#ff0000", italic = true },
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
    -- typescriptClassBlock = { fg = "#ff00ff" },

    -- ["@string"] = { fg = "#6AAB73" },
    -- ["@keyword"] = { fg = "#CF8E6D" },
    -- ["@typescriptDecorator"] = { fg = "#ff00ff" },
  }
end

return M
