local M = {}

function M.setup()
    -- Escape do Terminal Mode
    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

    -- Navegação entre splits (aproveitando as configurações padrão do LunarVim)
    vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to the left split' })
    vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to the bottom split' })
    vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to the top split' })
    vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to the right split' })

    -- Linhas em branco
    vim.keymap.set('n', 'op', 'o<Esc>k', { desc = 'Add a line below and stay' })
    vim.keymap.set('n', 'oi', 'O<Esc>j', { desc = 'Add a line above and stay' })
    vim.keymap.set('n', 'oo', 'A<CR>', { desc = 'Add a line and enter insert mode' })

    -- Tabs e Buffers
    vim.keymap.set('n', '<S-t>', ':tabnew<CR>', { silent = true, desc = 'New tab' })
    vim.keymap.set('n', 'td', ':bd<CR>', { desc = 'Delete buffer' })
    vim.keymap.set('n', '<F4>', ':bd<CR>', { desc = 'Delete buffer with F4' })

    -- Splits rápidos
    vim.keymap.set('n', 'th', ':split<CR>', { desc = 'Horizontal split' })
    vim.keymap.set('n', 'tv', ':vsplit<CR>', { desc = 'Vertical split' })

    -- Ações rápidas
    vim.keymap.set('n', '<C-q>', ':q!<CR>', { desc = 'Force quit' })
    vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save' })

    -- Text Manipulation
    vim.keymap.set('n', '<C-c>', '"+y', { desc = 'Copy to clipboard' })
    vim.keymap.set('v', '<C-c>', '"+y', { desc = 'Copy to clipboard (visual)' })
    vim.keymap.set('n', '<C-v>', '"+p', { desc = 'Paste from clipboard' })
    vim.keymap.set('v', '<C-v>', '"+p', { desc = 'Paste from clipboard (visual)' })

    -- Undo e Redo
    vim.keymap.set('n', '<C-z>', 'u', { desc = 'Undo' })
    vim.keymap.set('n', '<C-y>', '<C-r>', { desc = 'Redo' })

    -- Seleção e indentação
    vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all' })
    vim.keymap.set('x', '<Tab>', '>gv', { desc = 'Indent' })
    vim.keymap.set('x', '<S-Tab>', '<gv', { desc = 'Unindent' })

    -- Abrir terminal integrado
    vim.keymap.set('n', '<F6>', ':sp +resize\\ 10\\|terminal<CR>', { silent = true, desc = 'Open terminal in split' })
end

return M

