-- require('onedark').load()
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
