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

local function filterDuplicates(array)
  print("DOEI")
  local uniqueArray = {}
  for _, tableA in ipairs(array) do
    local isDuplicate = false
    for _, tableB in ipairs(uniqueArray) do
      if vim.deep_equal(tableA, tableB) then
        isDuplicate = true
        break
      end
    end
    if not isDuplicate then
      table.insert(uniqueArray, tableA)
    end
  end
  return uniqueArray
end

local function on_list(options)
  options.items = filterDuplicates(options.items)
  print("HOI")
  vim.fn.setqflist({}, " ", options)
  vim.cmd("botright copen")
end

return {
  "nvim-telescope/telescope.nvim",
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
    -- local unique_picker = require("unique-picker")

    telescope.load_extension("unique-picker")

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
    -- vim.keymap.set("n", "gr", unique_picker.test, { desc = "REFERENCES" })
    vim.keymap.set("n", "<leader>zr", function()
      telescope.extensions["unique-picker"].stuff()
    end, { desc = "REFERENCES" })

    -- vim.keymap.set("n", "zr", function()
    --   builtin.lsp_references({ on_list = create_unique_list })
    --   -- vim.lsp.buf.references(nil, { on_list = on_list })
    --   -- vim.lsp.buf.references()
    -- end, { desc = "Find References 2.0" })

    local shared_keymaps = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-e>"] = actions.preview_scrolling_down,
      ["<C-y>"] = actions.preview_scrolling_left,
      ["<C-h>"] = actions.results_scrolling_left,
      ["<C-l>"] = actions.results_scrolling_right,
      ["<A-h>"] = actions.preview_scrolling_left,
      ["<A-l>"] = actions.preview_scrolling_right,
      ["<C-t>"] = function()
        -- local config = require("telescope.config").
      end,
    }
    telescope.setup({
      defaults = {
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
          opts = {
            on_list = on_list,
          },
          show_line = true,
          reuse_win = true,
        },
        definitions = {
          reuse_win = true,
        },
        buffers = {
          sort_mru = true,
        },
      },
    })
  end,
}
