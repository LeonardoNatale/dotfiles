-- Clear highlight on search on pressing <Esc>
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit
-- easier for people to discover. Otherwise, you normally need to press
-- <C-\><C-n>, which is not what someone will guess without a bit more
-- experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own
-- mapping or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Keybind to switch to the next tab page.
--  See `help :tabpage`
--  `<C-w>T` to open a window into a new tab.
vim.keymap.set('n', '<C-w>N', '<cmd>tabnext<CR>', { desc = 'Move focus to the next tab' })
vim.keymap.set('n', '<C-w>P', '<cmd>tabprevious<CR>', { desc = 'Move focus to the previous tab' })

-- Center viewport when using <C-d> and <C-u>
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Navigate windows
vim.keymap.set('n', '<Up>', '<C-w>k')
vim.keymap.set('n', '<Down>', '<C-w>j')
vim.keymap.set('n', '<Left>', '<C-w>h')
vim.keymap.set('n', '<Right>', '<C-w>l')

-- Buffers
vim.keymap.set('n', '<leader>q', ':BufferClose<CR>', { desc = '[C]lose [B]uffer' })
vim.keymap.set('n', '<leader>F', ':BufferPick<CR>', { desc = '[P]ick [B]uffer' })
