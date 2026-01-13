vim.lsp.config.clangd = {
  -- Command and arguments to start the server.
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp', 'h' },
  root_markers = { { 'compile_commands.json' }, '.git' },
  settings = {}
}
vim.lsp.enable('clangd')

vim.lsp.config.tsserver = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
  },
  root_markers = { "package.json", "tsconfig.json", ".git" },
}
vim.lsp.enable("tsserver")
