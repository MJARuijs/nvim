return {
    'nvim-telescope/telescope.nvim', tag = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
     },
    keys = {
	{ "<leader>ff", function() require("telescope.builtin").find_files() end,  desc = "Telescope Find Files"  },
	{ "<leader>fg", function() require("telescope.builtin").live_grep() end,  desc = "Telescope Live Grep"  },
	{ "<leader>fb", function() require("telescope.builtin").buffers() end,  desc = "Telescope Buffers"  },
	{ "<leader>fh", function() require("telescope.builtin").help_tags() end,  desc = "Telescope Help Tags"  },
    },
    config = function()
	local telescope = require("telescope")
	local actions = require("telescope.actions")

	telescope.setup({
      defaults = {
	-- Default configuration for telescope goes here:
	-- config_key = value,
	mappings = {
	  i = {
	    -- map actions.which_key to <C-h> (default: <C-/>)
	    -- actions.which_key shows the mappings for your picker,
	    -- e.g. git_{create, delete, ...}_branch for the git_branches picker
	    ["<C-j>"] = actions.move_selection_next,
	    ["<C-k>"] = actions.move_selection_previous
	  },
	  n = {

	    ["<C-j>"] = actions.move_selection_next,
	    ["<C-k>"] = actions.move_selection_previous
	  }
	}
      },
      pickers = {
	-- Default configuration for builtin pickers goes here:
	-- picker_name = {
	--   picker_config_key = value,
	--   ...
	-- }
	-- Now the picker_config_key will be applied every time you call this
	-- builtin picker
      },
      extensions = {
	-- Your extension configuration goes here:
	-- extension_name = {
	--   extension_config_key = value,
	-- }
	-- please take a look at the readme of the extension you want to configure
      }
    })
    end
}
