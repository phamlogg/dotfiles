return {

	"rcarriga/nvim-notify",

	config = function()
		vim.opt.termguicolors = true
		vim.notify = require("notify")
		local notify = require("notify")

		notify.setup({
			minimum_width = 50,
			background_colour = "#1d2021",
			stages = "fade",
			timeout = 3000,
			fps = 60,
		})
	end,
}
