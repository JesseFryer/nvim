-- Pane splitting
vim.api.nvim_set_keymap('n', '<leader>sv', ':vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>sh', ':split<CR>',  { noremap = true })

-- Pane navigation
vim.api.nvim_set_keymap('n', '<Left>'  , '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>'  , '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<Up>'    , '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<Right>' , '<C-w>l', { noremap = true })

-- Lsp
vim.keymap.set('n', '<leader>se',  vim.diagnostic.open_float) -- "show error"
vim.keymap.set('n', '<leader>pe',  vim.diagnostic.goto_prev)  -- "previous error"
vim.keymap.set('n', '<leader>ne',  vim.diagnostic.goto_next)  -- "next error"
vim.keymap.set('n', '<leader>le',  vim.diagnostic.setloclist) -- "list errors"

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
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)     -- "go to definition"
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>h',  vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<C-k>',      vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>rn',  vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
  end,
})

-- Fuzzy finder
vim.api.nvim_set_keymap('n', '<leader>ff', ':FzfLua files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':FzfLua grep_project<CR>', { noremap = true })

-- File tree
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true })

