return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  config = function()
    local conform = require("conform")

    conform.setup({
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        lua = { "stylua" },
      },
      lsp_format = "never",
      format_on_save = { timeout_ms = 500 },
    })

    conform.formatters.stylua = {
      append_args = { "--indent-width", "2" },
    }

    vim.keymap.set("n", "<leader>cf", function()
      conform.format()
    end, { desc = "Format" })
  end,
}
