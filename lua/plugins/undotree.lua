return {
    "mbbill/undotree",
    keys = function()
        local keys = {
            { "<A-u>", vim.cmd.UndotreeToggle, desc = "Toggle UndoTree" },
            { "<A-U>", vim.cmd.UndotreeFocus, desc = "Focus UndoTree" },
        }
        return keys
    end,
}
