-- C/C++
vim.lsp.config.clangd = {
  cmd = { 'clangd' },
  filetypes = {
      'c',
      'cpp',
      'h',
      'hpp',
  },
  root_markers = {
      'compile_commands.json',
      '.git',
  },
  settings = {}
}
vim.lsp.enable('clangd')

-- Zig
vim.lsp.config.clangd = {
  cmd = { 'zls' },
  filetypes = {
      'zig', 
      'zon',
  },
  root_markers = {
      'zls.json',
      'build.zig',
      '.git',
  },
  settings = {}
}
vim.lsp.enable('zls')

-- TS/JS
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

-- HTML
vim.lsp.config.html = {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = {
    "html",
  },
  root_markers = { "package.json", ".git" },
}
vim.lsp.enable("html")

-- CSS
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
