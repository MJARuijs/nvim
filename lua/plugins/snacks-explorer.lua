return {
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
  },
  opts = {
    scroll = { enabled = false },
  },
}
