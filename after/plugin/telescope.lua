local builtin = require('telescope.builtin')
local map = vim.keymap.set

map('n', '<leader>sf', builtin.find_files, {})
map('n', '<leader>sw', builtin.live_grep, {})

local actions = require('telescope.actions')
require('nvim-web-devicons').setup({
    override = {},
    default = true
})
require('telescope').setup {
    defaults = {
        winblend = 0,
        border = {},
        file_ignore_patterns = { '.git/', 'node_modules', 'build' },
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        path_display = { 'smart' },
        selection_strategy = 'reset',
        sorting_strategy = 'ascending',
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = {
                prompt_position = 'top',
                preview_width = 0.5,
                results_width = 0.8,
            },
            vertical = {
                mirror = true,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        mappings = {
            i = {
                ['<C-j>'] = actions.move_selection_next,
                ['<C-k>'] = actions.move_selection_previous,
                ['<tab>'] = actions.select_default,
                ['<esc>'] = actions.close,
            }
        }
    },
    layout_config = {
        horizontal = {
            preview_cutoff = 100,
            preview_width = 0.6
        }
    }
}
