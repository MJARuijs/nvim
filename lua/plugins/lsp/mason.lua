return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = {
        exclude = {
          "vtsls",
          -- "jdtls",
        },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  -- {
  --   "WhoIsSethDaniel/mason-tool-installer.nvim",
  --   opts = {
  --     ensure_installed = {
  --       -- "prettier", -- prettier formatter
  --       -- "stylua", -- lua formatter
  --       -- "isort", -- python formatter
  --       -- "black", -- python formatter
  --       -- "pylint",
  --       -- "eslint_d",
  --     },
  --   },
  --   dependencies = {
  --     "williamboman/mason.nvim",
  --   },
  -- },
}
