local actions = require "telescope.actions"
require("telescope").setup {
	defaults = {
		mappings = {
			i = {
				["<C-n>"] = actions.move_selection_next,
				["<C-e>"] = actions.move_selection_previous,
			}
		}
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
		buffers = {
			mappings = {
				i = {
					["<C-d>"] = actions.delete_buffer + actions.move_to_top,
				},
			}
		}
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
