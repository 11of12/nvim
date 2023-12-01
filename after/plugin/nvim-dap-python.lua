vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<Leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")

--nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
--nnoremap <silent> <leader>df :lua require('dap-python').test_class()<CR>
vim.keymap.set("v", "<leader>ds", " <ESC>:lua require('dap-python').debug_selection()<CR>")

require('dap')

--lua << EOF
require('dap-python').setup('/home/wyrgly/.local/share/nvim/mason/packages/debugpy/venv/bin/python')
table.insert(require('dap').configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'My custom launch configuration',
  program = '${file}',
  -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
})
require("dapui").setup()
--EOF
--require('dap-ui').setup()
