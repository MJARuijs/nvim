local config = require("telescope.config")

local mergeTables = function(t1, t2)
    local result = {}
    for k, v in pairs(t1) do
        result[k] = v
    end
    for k, v in pairs(t2) do
        result[k] = v
    end
    return result
end

local base_ignore_patterns = {
    "%.spec.ts",
}

local function toggleIgnoredFilePatterns()
    local current_ignore_patterns = config.values["file_ignore_patterns"]
    if #current_ignore_patterns == 0 then
        for _, v in pairs(base_ignore_patterns) do
            table.insert(config.values.file_ignore_patterns, v)
        end
        return true
    else
        config.values["file_ignore_patterns"] = {}
        return false
    end
end

return {
    "MJARuijs/telescope.nvim",
    tag = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- optional but recommended
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local builtin = require("telescope.builtin")
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        vim.keymap.set("n", "gi", builtin.lsp_implementations, { desc = "Telescope find implementations" })
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>fz", function()
            toggleIgnoredFilePatterns()
        end, { desc = "Enable Ignored Files" })

        local layout = require("telescope.actions.layout")
        local shared_keymaps = {
            ["<C-h>"] = actions.results_scrolling_left,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-l>"] = actions.results_scrolling_right,
            ["<A-h>"] = actions.preview_scrolling_left,
            ["<A-j>"] = actions.preview_scrolling_down,
            ["<A-k>"] = actions.preview_scrolling_up,
            ["<A-l>"] = actions.preview_scrolling_right,
            ["<A-t>"] = layout.toggle_preview,
        }
        telescope.setup({
            defaults = {
                -- vimgrep_arguments = {
                --     "rg",
                --     "--hidden",
                --     "--ignored",
                --     "--with-filename",
                --     "--pretty",
                -- },
                file_ignore_patterns = {
                    "%.spec.ts",
                },
                layout_strategy = "flex",
                layout_config = {
                    horizontal = {
                        width = 0.95,
                        height = 0.95,
                    },
                },
                mappings = {
                    i = mergeTables(shared_keymaps, {
                        ["<C-d>"] = actions.delete_buffer,
                    }),
                    n = mergeTables(shared_keymaps, {
                        ["dd"] = actions.delete_buffer,
                        ["q"] = actions.close,
                    }),
                },
            },
            pickers = {
                lsp_references = {
                    show_line = true,
                    reuse_win = true,
                },
                definitions = {
                    reuse_win = true,
                },
                buffers = {
                    sort_mru = true,
                },
                lsp_implementations = {
                    reuse_win = true,
                },
            },
        })
    end,
}
