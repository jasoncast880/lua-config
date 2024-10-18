return{
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
}
