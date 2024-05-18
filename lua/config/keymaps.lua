-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- dap ui
vim.api.nvim_set_keymap("n", "<leader>du", '<Cmd>lua require("dapui").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>do", '<Cmd>lua require("dapui").open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dc", '<Cmd>lua require("dapui").close()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>de", '<Cmd>lua require("dapui").eval()<CR>', { noremap = true, silent = true })

-- debugging/dap
vim.api.nvim_set_keymap("n", "<F9>", '<Cmd>lua require"dap".continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F8>", '<Cmd>lua require"dap".step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F7>", '<Cmd>lua require"dap".step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F10>", '<Cmd>lua require"dap".step_out()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>b",
  '<Cmd>lua require"dap".toggle_breakpoint()<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>B",
  '<Cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>',
  { noremap = true, silent = true, desc = "Set a conditional breakpoint" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>lp",
  '<Cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>',
  {
    noremap = true,
    silent = true,
    desc = "set a log point (logs when the code reaches this point, but does not pause execution)",
  }
)
vim.api.nvim_set_keymap("n", "<leader>dr", '<Cmd>lua require"dap".repl.open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dl", '<Cmd>lua require"dap".run_last()<CR>', { noremap = true, silent = true })
