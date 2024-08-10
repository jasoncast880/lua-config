
return {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup({
	color_overrides = {
	  latte = {
	    base = "#fbf1c7",
	    mantle = "#f9ebaf",
	    crust = "#e0d39d",
	    pink = "#bd5fa3",
	    mauve = "#7a33d7",
	    green = "#338022",
	    teal = "#148389",
	    yellow = "#a06514",
	    peach = "#e45a09",
	    text = "#2d2018"
	  },
	},
	flavour = "latte",
      })
      vim.cmd("colorscheme catppuccin")
    end
}

