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
local util = require("util")

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

-- local function getCursorPosition()
--     local line_number = vim.fn.getpos(".")[2]
--     local column = vim.fn.getpos(".")[3]
--     return { line_number, column }
-- end
--
autocmd("CursorMoved", {
    callback = function()
        -- local current_window = vim.api.nvim_get_current_win()
        -- local current_buffer = vim.api.nvim_get_current_buf()
        -- local cursor_position = getCursorPosition()

        -- vim.notify("" .. cursor_position[1] .. ", " .. cursor_position[2])
        -- local inspect_result = vim.cmd("Inspect silent")

        local extmarkGroups = vim.inspect_pos()["extmarks"]
        if #extmarkGroups == 0 then
            vim.cmd(":set guicursor=n-v-c:block-lightCursor,i:ver20-lightCursor")
            -- vim.cmd(":set guicursor=i:ver20-lightCursor")
        end
        for k, v in ipairs(extmarkGroups) do
            local colorEntry = v["opts"]["hl_group"]

            if string.find(colorEntry, "_ffffff_") == nil then
                vim.cmd(":set guicursor=n-v-c:block-lightCursor,i:ver20-lightCursor")
            else
                vim.cmd(":set guicursor=n-v-c:block-darkCursor,i:ver20-darkCursor")
            end
            -- vim.notify("" .. string.find(colorEntry, "_ffffff_"))
        end
        -- vim.notify(vim.opt.background:get())
        -- vim.api.nvim_get_hl_id_by_name()
        -- if inspect_result == nil then
        --     return
        -- end

        -- vim.notify("" .. string.find(inspect_result, "Extmarks"))
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
