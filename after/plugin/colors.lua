function LoadNoClownFiesta()
    vim.cmd [[colorscheme no-clown-fiesta]]
    require("no-clown-fiesta").setup({
        transparent = false, -- Enable this to disable the bg color
        styles = {
            -- You can set any of the style values specified for `:h nvim_set_hl`
            comments = {},
            keywords = {},
            functions = {},
            variables = {},
            type = { bold = true },
        },
    })
end

function LoadOneDark()
    require('onedark').setup {
        style = 'warm',
        transparent = false, -- Show/hide background
        code_style = {
            comments = 'italic',
            keywords = 'none',
            functions = 'none',
            strings = 'none',
            variables = 'none'
        },
        lualine = {
            transparent = true, -- lualine center bar transparency
        },

    }

    require('onedark').load()
end

LoadOneDark()
