return {
    "oclay1st/maven.nvim",
    cmd = { "Maven", "MavenInit", "MavenExec", "MavenFavorites" },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {}, -- options, see default configuration
    keys = {
        { "<leader>m", desc = "+Maven", mode = { "n", "v" } },
        { "<leader>mm", "<cmd>Maven<cr>", desc = "Maven Projects" },
        { "<leader>mf", "<cmd>MavenFavorites<cr>", desc = "Maven Favorite Commands" },
    },
}
