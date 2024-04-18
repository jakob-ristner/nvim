--Custom Toggleterm functions
local Terminal = require("toggleterm.terminal").Terminal

function _ZIG_RUN()
	return Terminal:new({ cmd = "make", float_opts = { border = "rounded", }, direction = "float", hidden = false, close_on_exit = false })
	    :toggle()
end

vim.keymap.set("n", "<F4>", ":lua _ZIG_RUN()<cr>", opts)
