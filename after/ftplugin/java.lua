--Custom Toggleterm functions
local Terminal = require("toggleterm.terminal").Terminal

function _MAKE()
	return Terminal:new({ cmd = "make", float_opts = { border = "rounded", }, direction = "float", hidden = false, close_on_exit = false })
	    :toggle()
end

function _MAKE_RUN()
	return Terminal:new({ cmd = "make run", float_opts = { border = "rounded", }, direction = "float", hidden = false, close_on_exit = false })
	    :toggle()
end

vim.keymap.set("n", "<F3>", ":lua _MAKE()<cr>", opts)
vim.keymap.set("n", "<F4>", ":lua _MAKE_RUN()<cr>", opts)
