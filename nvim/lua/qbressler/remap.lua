vim.g.mapleader = " "
vim.keymap.set("i", "<leader>jk", "<ESC>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>bp", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>")




