local function sleep(n)
  os.execute("sleep " .. tonumber(n))
end
return {
  "nvim-java/nvim-java",
  config = function()
    require("java").setup({
      java_debug_adapter = {
        -- enable = false,
      },
    })
    vim.lsp.enable("jdtls")
    vim.keymap.set("n", "<leader>jt", function()
      vim.cmd([[JavaTestRunCurrentClass]])
    end, { desc = "Run Current Test File" })
    -- vim.keymap.set("n", "<leader>jt", "<cmd>JavaTestRunCurrentClass<CR><C-w>j", { desc = "Run Current Test File" })
    vim.keymap.set("n", "<leader>jT", "<cmd>JavaTestViewLastReport<CR>", { desc = "View Test Result" })
    vim.api.nvim_set_keymap("n", "<leader>jr", "<leader>ft sh run.sh<CR>", {})
    -- vim.keymap.set("n", "<leader>jr", function()
    --   local terminal = require("snacks").terminal
    --   -- terminal:close()
    --   print(terminal.closed)
    --   -- vim.cmd([[<leader>ft]])
    -- end, {})
    vim.lsp.config("jdtls", {
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-21",
                -- path = "/opt/jdk-21",
                path = vim.fn.expand("/usr/lib/jvm/java-21-openjdk/"),
                default = true,
              },
            },
          },
          format = {
            enabled = true,
            tabSize = 10,
          },
          inlayHints = {
            parameterNames = {
              enabled = "none",
            },
          },
        },
      },
    })
  end,
  setup = function() end,
}
