return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
      },
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
