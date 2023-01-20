require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "lua", "json", "graphql", "regex", "vim", "dart", "python" },

    sync_install = false,
    auto_install = true,
    ignore_install = { "javascript" },

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        disable = {}
    },
    autotag = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    }
}
