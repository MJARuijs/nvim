return {
  "mbbill/undotree",
  keys = function()
    local keys = {
      { "<A-u>", vim.cmd.UndotreeToggle, desc = "Toggle UndoTree" },
    }
    return keys
  end,
}
