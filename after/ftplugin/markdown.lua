vim.keymap.set("n", "<F3>", ":!pandoc % -o %:r.pdf<CR>", opts)
vim.keymap.set("n", "<F4>", ":!zathura %:r.pdf --fork<CR><CR>", opts)
