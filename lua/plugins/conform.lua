return {
  "stevearc/conform.nvim",
  -- event = { "BufReadPre", "BufNewFile" },

  -- opts = function()
  --     local opts = {
  -- formatters = {
  --     stylua = {
  --         append_args = { "--indent-width", "2" },
  --     },
  -- },
  --     }
  --     return opts
  -- end,

  opts = {
    formatters_by_ft = {
      java = { "astyle" },
      -- html = { "prettier" },
      -- htmlangular = { "prettier" },
      -- typescript = { "astyle" },
    },
    formatters = {
      stylua = {
        append_args = { "--indent-width", "2", "--column-width", "160" },
      },
      astyle = {
        append_args = { "--indent=tab=4", "--squeeze-ws" },
      },
    },
  },
  -- config = function()
  --     local conform = require("conform")
  --
  --     conform.setup({
  --         formatters_by_ft = {
  --             lua = { "stylua" },
  --         },
  --         format_on_save = { timeout_ms = 500 },
  --     })
  --
  --     conform.formatters.stylua = {
  --         append_args = { "--indent-width", "2" },
  --     }
  --
  --     vim.keymap.set("n", "<leader>cf", function()
  --         conform.format()
  --     end, { desc = "Format" })
  -- end,
}
