return {
  "neovim/nvim-lspconfig",
  enabled = true,
  opts = {
    servers = {
      ["*"] = {
        keys = {
          -- { "gd", false },
        },
      },
      ts_ls = {
        keys = {
          -- { "gr", false },
        },
      },
      vtsls = {
        keys = {
          -- { "gr", false },
        },
      },
      angularls = {
        keys = {
          -- { "gd", false },
        },
      },
    },
  },
  -- opts = function()
  -- local keys = require("lazyvim.plugins.lsp.keymaps").get()
  -- keys[#keys + 1] = { "<leader>gr", false }
  --
  -- end,
  -- config = function()
  -- local lspconfig = require("lspconfig")
  -- lspconfig.ts_ls.setup({})
  -- lspconfig.angularls.setup({})
  -- end,
}
