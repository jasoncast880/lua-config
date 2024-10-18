return {
  "ellisonleao/gruvbox.nvim",
  config = function()
    vim.cmd("colorscheme gruvbox")

    vim.o.background = 'light'
    vim.g.gruvbox_contrast_light = 'soft'
  end
}
