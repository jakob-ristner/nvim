--Custom Toggleterm functions
local Terminal = require("toggleterm.terminal").Terminal

function _PYTHON_RUN()
	local f = vim.fn.expand('%')
	return Terminal:new({ cmd = "python " .. f, float_opts = { border = "rounded", }, direction = "float", hidden = false, close_on_exit = false })
	    :toggle()
end

vim.keymap.set("n", "<F4>", ":lua _PYTHON_RUN()<cr>", opts)
