return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',  -- Automatically update the parsers
        event = { 'BufReadPost', 'BufNewFile' },
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = { 'lua', 'cpp', 'python', 'java' }, -- Specify the languages you want
                sync_install = false,  -- Install languages synchronously (only applied to `ensure_installed`)
                auto_install = true,   -- Automatically install missing parsers
                highlight = {
                    enable = true,    -- false will disable the whole extension
                    additional_vim_regex_highlighting = false,
                },
            }
        end,
    },
}
