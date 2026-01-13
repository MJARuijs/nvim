local M = {}

M.setup = function()
  return {

    Comment = { fg = "#ff0000", italic = true },

    ["@string"] = { fg = "#6AAB73" },
    ["@keyword"] = { fg = "#CF8E6D" },
  }
end

return M
