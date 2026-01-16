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

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
      -- pickers = {
      --   -- Default configuration for builtin pickers goes here:
      --   -- picker_name = {
      --   --   picker_config_key = value,
      --   --   ...
      --   -- }
      --   -- Now the picker_config_key will be applied every time you call this
      --   -- builtin picker
      -- },
      -- extensions = {
      --   -- Your extension configuration goes here:
      --   -- extension_name = {
      --   --   extension_config_key = value,
      --   -- }
      --   -- please take a look at the readme of the extension you want to configure
      -- },
    })
  end,
}
