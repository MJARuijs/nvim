-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local autocmd = vim.api.nvim_create_autocmd
-- vim.api.nvim_set_keymap("n", "dd", "", {})

if vim.g.neovide ~= true then
    autocmd("VimEnter", {
        command = ":silent !alacritty msg config 'window.padding={x=5,y=5}'",
    })

    autocmd("VimLeavePre", {
        command = ":silent !alacritty msg config 'window.padding={x=20,y=20}'",
    })
end

autocmd("BufEnter", {
    callback = function()
        -- vim.cmd.call("feedkeys('zz')")
    end,
})

autocmd("Signal", {
    pattern = "SIGUSR1",
    callback = function()
        vim.cmd.colorscheme("intellij")
    end,
    nested = true, -- allow this autocmd to trigger `OptionSet background` event
})

autocmd("VimEnter", {
    callback = function()
        vim.cmd.call("nvim_input(':lua vim.g.neovide_scale_factor=0.8<CR>')")
    end,
})

local util = require("util")

-- autocmd({ "BufReadPre" }, {
--     callback = function(args)
--         if args ~= nil then
--             vim.notify("BufReadPre: " .. util.table_to_string(args))
--         else
--             vim.notify("FT but args is nil..")
--         end
--     end,
-- })
-- autocmd({ "BufNewFile" }, {
--     callback = function(args)
--         if args ~= nil then
--             vim.notify("BufNewFile: " .. util.table_to_string(args))
--         else
--             vim.notify("FT but args is nil..")
--         end
--     end,
-- })
-- autocmd({ "FileReadPre" }, {
--     callback = function(args)
--         if args ~= nil then
--             vim.notify("FileReadPre: " .. util.table_to_string(args))
--         else
--             vim.notify("FT but args is nil..")
--         end
--     end,
-- })
-- autocmd({ "FileType" }, {
--     callback = function(args)
--         if args ~= nil then
--             if
--                 args["match"] ~= nil
--                 and args["match"] ~= "noice"
--                 and args["match"] ~= "snacks_notif"
--                 and args["match"] ~= "TelescopePrompt"
--                 and args["match"] ~= "TelescopeResults"
--             then
--                 vim.notify("FILETYPE: " .. util.table_to_string(args))
--             end
--         else
--             vim.notify("FT but args is nil..")
--         end
--     end,
-- })
