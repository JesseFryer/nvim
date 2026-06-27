vim.lsp.config.clangd = {
  -- Command and arguments to start the server.
  cmd = { 'clangd' },
  filetypes = {
      'c',
      'cpp',
      'h',
      'hpp',
  },
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
    "ts",
    "js",
  },
  root_markers = { "package.json", "tsconfig.json", ".git" },
}
vim.lsp.enable("tsserver")

vim.lsp.config.html = {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = {
    "html",
  },
  root_markers = { "package.json", ".git" },
}
vim.lsp.enable("html")

vim.lsp.config.cssls = {
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = {
    "css",
    "scss",
    "less",
  },
  root_markers = { "package.json", ".git" },
}
vim.lsp.enable("cssls")
