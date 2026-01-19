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

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

    local shared_keymaps = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-h>"] = actions.results_scrolling_left,
      ["<C-l>"] = actions.results_scrolling_right,
      ["<A-h>"] = actions.preview_scrolling_left,
      ["<A-l>"] = actions.preview_scrolling_right,
    }
    telescope.setup({
      defaults = {
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
        buffers = {
          sort_mru = true,
        },
      },
    })
  end,
}
