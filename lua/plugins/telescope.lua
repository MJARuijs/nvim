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

local test = function()
  vim.notify("HOI")
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
    local actions_layout = require("telescope.actions.layout")
    require("telescope.builtin").resume()
    vim.api.nvim_create_autocmd("User", {
      pattern = "TelescopeFindPre",
      callback = function()
        -- vim.keymap.del("n", "<C-j>")
        -- vim.notify("HOI")
      end,
    })
    vim.api.nvim_create_autocmd("User", {
      pattern = "TelescopeClosed",
      callback = function()
        -- vim.keymap.set("n", "<C-j>", "<C-w>j")
        vim.notify("doei")
      end,
    })
    -- vim.cmd([[
    -- autocmd!
    -- autocmd User TelescopeFindPre lua test()]])
    -- local currentKeymap = vim.api.nvim_get_keymap("n")
    -- print(currentKeymap[1])
    -- for k in currentKeymap do
    --   print(k)
    -- end
    -- vim.keymap.set("n", "<leader>ff", function()
    -- local currentKeymap = vim.api.nvim_get_keymap("n")
    -- for k in currentKeymap do
    --   print(k)
    -- end
    -- vim.keymap.del("n", "<C-j>")
    -- print("DELT")
    -- builtin.find_files()
    -- vim.cmd(":!Telescope find_files")
    -- vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { desc = "MY TEST" })
    -- end, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Telescope help tags" })

    local shared_keymaps = {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
    }
    telescope.setup({
      defaults = {
        mappings = {
          i = {

            ["<C-d>"] = actions.delete_buffer,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = {
            ["dd"] = actions.delete_buffer,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            -- ["<ESC>"] = {
            --   print("TEST"),
            --   actions.close,
            -- },
            -- print("TESTTTTTT"),
          },
          -- i = mergeTables(shared_keymaps, {
          --   ["<C-d>"] = actions.delete_buffer,
          --   ["<C-x>"] = actions.nop,
          -- }),
          -- n = {
          --   ["<C-j>"] = actions.nop,
          --   ["<C-k>"] = actions.move_selection_previous,
          --   ["dd"] = actions.delete_buffer,
          --   ["<C-x>"] = actions.nop,
          --   ["<da>"] = {
          --     print("TESTTTT"),
          --   },
          -- },
        },
      },
      pickers = {
        buffers = {
          -- sort_lastused = true,
          sort_mru = true,
        },
      },
    })
  end,
}
