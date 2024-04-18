--Custom Toggleterm functions
local Terminal = require("toggleterm.terminal").Terminal

function _CARGO_CHECK()
	return Terminal:new({ cmd = "cargo check", float_opts = { border = "rounded", }, direction = "float", hidden = false, close_on_exit = false })
	    :toggle()
end

function _CARGO_RUN()
	return Terminal:new({ cmd = "cargo run", float_opts = { border = "rounded", }, direction = "float", hidden = false, close_on_exit = false })
	    :toggle()
end

vim.keymap.set("n", "<F3>", ":lua _CARGO_CHECK()<cr>", opts)
vim.keymap.set("n", "<F4>", ":lua _CARGO_RUN()<cr>", opts)
