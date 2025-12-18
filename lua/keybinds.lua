-- Pane splitting
vim.api.nvim_set_keymap('n', '<leader>sv', ':vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>sh', ':split<CR>',  { noremap = true })

-- Pane navigation
vim.api.nvim_set_keymap('n', '<Left>'  , '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>'  , '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<Up>'    , '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<Right>' , '<C-w>l', { noremap = true })

-- Lsp
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>e',  vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q',  vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- Fuzzy finder
vim.api.nvim_set_keymap('n', '<C-T>', ':FzfLua files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', ':FzfLua grep_project<CR>', { noremap = true })

-- File tree
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true })

