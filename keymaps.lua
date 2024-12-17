local M = {}

function M.setup()
  -- Terminal Mode
  vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

  -- Split navigation (preserva compatibilidade com LunarVim)
  vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to the left split' })
  vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to the bottom split' })
  vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to the top split' })
  vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to the right split' })

  -- Insert Mode Line Navigation
  vim.keymap.set('i', '<C-Up>', '<C-o><S-Up>', { desc = 'Move cursor up in insert mode' })
  vim.keymap.set('i', '<C-Down>', '<C-o><S-Down>', { desc = 'Move cursor down in insert mode' })
  vim.keymap.set('i', '<C-Left>', '<C-o><S-Left>', { desc = 'Move cursor left in insert mode' })
  vim.keymap.set('i', '<C-Right>', '<C-o><S-Right>', { desc = 'Move cursor right in insert mode' })

  -- Add empty lines
  vim.keymap.set('n', 'op', 'o<Esc>k', { desc = 'Add a line below and stay' })
  vim.keymap.set('n', 'oi', 'O<Esc>j', { desc = 'Add a line above and stay' })
  vim.keymap.set('n', 'oo', 'A<CR>', { desc = 'Add a line and enter insert mode' })

  -- Tabs and Buffers (respeita atalhos padrão do LunarVim)
  vim.keymap.set('n', '<S-t>', ':tabnew<CR>', { silent = true, desc = 'New tab' })
  vim.keymap.set('n', 'ty', ':bn<CR>', { desc = 'Next buffer' })
  vim.keymap.set('n', 'tr', ':bp<CR>', { desc = 'Previous buffer' })
  vim.keymap.set('n', 'td', ':bd<CR>', { desc = 'Delete buffer' })

  -- Split creation
  vim.keymap.set('n', 'th', ':split<CR>', { desc = 'Horizontal split' })
  vim.keymap.set('n', 'tv', ':vsplit<CR>', { desc = 'Vertical split' })

  -- Quick commands
  vim.keymap.set('n', 'tc', ':!', { desc = 'Run a shell command' })
  vim.keymap.set('n', '<C-q>', ':q!<CR>', { desc = 'Force quit' })
  vim.keymap.set('n', 'q', ':q<CR>', { desc = 'Quit' })
  vim.keymap.set('i', '<C-q>', '<Esc>:q<CR>', { desc = 'Quit from insert mode' })

  -- Terminal opening
  vim.keymap.set('n', '<F6>', ':sp +resize\\ 10\\|terminal<CR>', { silent = true, desc = 'Open terminal in split' })
  vim.keymap.set('i', '<F6>', '<Esc>:sp +resize\\ 10\\|terminal<CR>', { silent = true, desc = 'Open terminal in split from insert mode' })

  -- Text manipulation
  vim.keymap.set('n', '<C-c>', '"+y', { desc = 'Copy to clipboard' })
  vim.keymap.set('v', '<C-c>', '"+y', { desc = 'Copy to clipboard (visual)' })
  vim.keymap.set('i', '<C-c>', '<Esc>"+y', { silent = true, desc = 'Copy from insert mode' })

  vim.keymap.set('n', '<C-v>', '"+p', { desc = 'Paste from clipboard' })
  vim.keymap.set('v', '<C-v>', '"+p', { desc = 'Paste from clipboard (visual)' })
  vim.keymap.set('i', '<C-v>', '<Esc>"+p', { silent = true, desc = 'Paste from insert mode' })

  vim.keymap.set('n', '<C-x>', '"+d', { desc = 'Cut to clipboard' })
  vim.keymap.set('v', '<C-x>', '"+d', { desc = 'Cut to clipboard (visual)' })
  vim.keymap.set('i', '<C-x>', '<Esc>"+d', { silent = true, desc = 'Cut from insert mode' })

  vim.keymap.set('v', '<BS>', 'd', { desc = 'Delete selection with Backspace' })
  vim.keymap.set('v', '<Del>', 'd', { desc = 'Delete selection with Delete' })

  -- Undo and Redo (corrige problema com atalhos)
  vim.keymap.set('n', '<C-z>', 'u', { desc = 'Undo' })
  vim.keymap.set('v', '<C-z>', '<Esc>u', { desc = 'Undo (visual)' })
  vim.keymap.set('i', '<C-z>', '<Esc>u', { desc = 'Undo from insert mode' })

  vim.keymap.set('n', '<C-y>', '<C-r>', { desc = 'Redo' })
  vim.keymap.set('v', '<C-y>', '<Esc><C-r>', { desc = 'Redo (visual)' })
  vim.keymap.set('i', '<C-y>', '<Esc><C-r>', { desc = 'Redo from insert mode' })

  -- Save
  vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save' })
  vim.keymap.set('v', '<C-s>', ':w<CR>', { desc = 'Save (visual)' })
  vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { desc = 'Save from insert mode' })

  -- Select all
  vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all' })
  vim.keymap.set('i', '<C-a>', '<Esc>ggVG', { desc = 'Select all from insert mode' })

  -- Indentation
  vim.keymap.set('x', '<Tab>', '>gv', { desc = 'Indent' })
  vim.keymap.set('x', '<S-Tab>', '<gv', { desc = 'Unindent' })
end

return M
