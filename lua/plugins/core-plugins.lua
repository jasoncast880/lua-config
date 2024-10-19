return {
    --colorscheme
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme gruvbox")

            vim.o.background = 'light'
            vim.g.gruvbox_contrast_light = 'soft'
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        config = function()
        require('lualine').setup({
            options = {
                theme = 'gruvbox'
            },
            sections = {
              lualine_a = {'mode'},
              lualine_b = {'filename'},
              lualine_c = {'branch', 'diff', 'diagnostics'},
              -- x is encoding and stuff by default
              lualine_y = {'progress'},
              lualine_z = {'location'},
            }
        })
        end
    },
    --harpoon
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = {"nvim-lua/plenary.nvim"},
        config = function()
            local harpoon = require("harpoon")
            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        end
    },
    --telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim',},
        config = function()
            require("telescope").setup()
        end
    },
}
