return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local harpoon = require("harpoon")
    local keys = {
      {
        "<leader>H",
        function()
          harpoon:list():add()
        end,
        desc = "Harpoon file",
      },
      {
        "<leader>h",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon file",
      },
    }

    for i = 1, 9 do
      table.insert(keys, {
        "<leader>" .. i,
        function()
          harpoon:list():select(i)
        end,
        desc = "Harpoon to file " .. i,
      })
    end

    return keys
  end,
}
