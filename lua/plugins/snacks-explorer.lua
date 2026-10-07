return {
    {
        "folke/snacks.nvim",
        -- This is required to override the default keymaps set by LazyVim (don't think it should be required, but without this, it doesn't work)
        -- The actual implementation of these keymaps is set in the config/keymaps.lua, to keep it in the same file as the other keymaps
        keys = {
            -- { "<leader>e", "" },
            -- { "<leader>E", "" },
            { "<leader>ft", "" },
            { "<leader>fT", "" },
            { "<c-/>", "" },
            { "<leader>gg", "" },
            { "<leader>gG", "" },
            -- { "n", "explorer_add" },
        },
        opts = {
            picker = {
                sources = {
                    explorer = {
                        actions = {
                            copy_file_path = {
                                action = function(_, item)
                                    if not item then
                                        return
                                    end

                                    local vals = {
                                        ["BASENAME"] = vim.fn.fnamemodify(item.file, ":t:r"),
                                        ["EXTENSION"] = vim.fn.fnamemodify(item.file, ":t:e"),
                                        ["FILENAME"] = vim.fn.fnamemodify(item.file, ":t"),
                                        ["PATH"] = item.file,
                                        ["PATH (CWD)"] = vim.fn.fnamemodify(item.file, ":."),
                                        ["PATH (HOME)"] = vim.fn.fnamemodify(item.file, ":~"),
                                        ["URI"] = vim.uri_from_fname(item.file),
                                    }

                                    local options = vim.tbl_filter(function(val)
                                        return vals[val] ~= ""
                                    end, vim.tbl_keys(vals))
                                    if vim.tbl_isempty(options) then
                                        vim.notify("No values to copy", vim.log.levels.WARN)
                                        return
                                    end
                                    table.sort(options)
                                    vim.ui.select(options, {
                                        prompt = "Choose to copy to clipboard:",
                                        format_item = function(list_item)
                                            return ("%s: %s"):format(list_item, vals[list_item])
                                        end,
                                    }, function(choice)
                                        local result = vals[choice]
                                        if result then
                                            vim.fn.setreg("+", result)
                                            Snacks.notify.info("Yanked `" .. result .. "`")
                                        end
                                    end)
                                end,
                            },
                            open_first_file = {
                                action = function(_, item)
                                    vim.cmd.call("nvim_input('<CR>')")
                                    local snacks = require("snacks")
                                    local util = require("util")
                                    -- vim.notify(util.table_to_string(item))
                                    if not item then
                                        return
                                    end

                                    if not item.dir then
                                        return
                                    end

                                    expand = function(path)
                                        vim.cmd.call("nvim_input('<CR>')")
                                        vim.cmd.call("nvim_input('j')")
                                        local subDirCounter = 0
                                        local subFileCounter = 0
                                        local subDir = ""
                                        for name, type, err in vim.fs.dir(path, { err = true }) do
                                            if err then
                                                vim.notify("ERROR")
                                            else
                                                if type == "file" then
                                                    subFileCounter = subFileCounter + 1
                                                    -- break
                                                elseif type == "directory" then
                                                    subDirCounter = subDirCounter + 1
                                                    subDir = path .. "/" .. name
                                                end
                                                -- vim.notify(name .. " " .. type)
                                            end
                                        end

                                        if subDirCounter == 1 and subFileCounter == 0 then
                                            vim.cmd.call("nvim_input('j')")
                                            vim.notify("Expanding " .. path)
                                            expand(subDir)
                                        else
                                            -- Snacks.picker.actions.confirm(Snacks.explorer)
                                        end
                                    end

                                    expand(item.file)
                                end,
                            },
                        },
                        win = {
                            list = {
                                keys = {
                                    ["y"] = "copy_file_path",
                                    ["n"] = "open_first_file",
                                },
                            },
                        },
                    },
                    scroll = { enabled = false },
                },
            },
        },
    },
}

-- return {
--   {
--     "folke/snacks.nvim",
--     priority = 1000,
--     lazy = false,
--     opts = {
--       picker = {
--         enabled = true,
--         sources = {
--           explorer = {
--             auto_close = true,
--             hidden = true,
--             layout = {
--               preset = "default",
--               preview = false,
--             },
--             actions = {
--               copy_file_path = {
--                 action = function(_, item)
--                   if not item then
--                     return
--                   end
--
--                   local vals = {
--                     ["BASENAME"] = vim.fn.fnamemodify(item.file, ":t:r"),
--                     ["EXTENSION"] = vim.fn.fnamemodify(item.file, ":t:e"),
--                     ["FILENAME"] = vim.fn.fnamemodify(item.file, ":t"),
--                     ["PATH"] = item.file,
--                     ["PATH (CWD)"] = vim.fn.fnamemodify(item.file, ":."),
--                     ["PATH (HOME)"] = vim.fn.fnamemodify(item.file, ":~"),
--                     ["URI"] = vim.uri_from_fname(item.file),
--                   }
--
--                   local options = vim.tbl_filter(function(val)
--                     return vals[val] ~= ""
--                   end, vim.tbl_keys(vals))
--                   if vim.tbl_isempty(options) then
--                     vim.notify("No values to copy", vim.log.levels.WARN)
--                     return
--                   end
--                   table.sort(options)
--                   vim.ui.select(options, {
--                     prompt = "Choose to copy to clipboard:",
--                     format_item = function(list_item)
--                       return ("%s: %s"):format(list_item, vals[list_item])
--                     end,
--                   }, function(choice)
--                     local result = vals[choice]
--                     if result then
--                       vim.fn.setreg("+", result)
--                       Snacks.notify.info("Yanked `" .. result .. "`")
--                     end
--                   end)
--                 end,
--               },
--               search_in_directory = {
--                 action = function(_, item)
--                   if not item then
--                     return
--                   end
--                   local dir = vim.fn.fnamemodify(item.file, ":p:h")
--                   Snacks.picker.grep({
--                     cwd = dir,
--                     cmd = "rg",
--                     args = {
--                       "-g",
--                       "!.git",
--                       "-g",
--                       "!node_modules",
--                       "-g",
--                       "!dist",
--                       "-g",
--                       "!build",
--                       "-g",
--                       "!coverage",
--                       "-g",
--                       "!.DS_Store",
--                       "-g",
--                       "!.docusaurus",
--                       "-g",
--                       "!.dart_tool",
--                     },
--                     show_empty = true,
--                     hidden = true,
--                     ignored = true,
--                     follow = false,
--                     supports_live = true,
--                   })
--                 end,
--               },
--               diff = {
--                 action = function(picker)
--                   picker:close()
--                   local sel = picker:selected()
--                   if #sel > 0 and sel then
--                     Snacks.notify.info(sel[1].file)
--                     vim.cmd("tabnew " .. sel[1].file)
--                     vim.cmd("vert diffs " .. sel[2].file)
--                     Snacks.notify.info("Diffing " .. sel[1].file .. " against " .. sel[2].file)
--                     return
--                   end
--
--                   Snacks.notify.info("Select two entries for the diff")
--                 end,
--               },
--             },
--             win = {
--               list = {
--                 keys = {
--                   ["y"] = "copy_file_path",
--                   ["s"] = "search_in_directory",
--                   ["D"] = "diff",
--                 },
--               },
--             },
--           },
--         },
--       },
--     },
--   },
-- }
