-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Modify arrow keys to suit split keebs
vim.cmd [[
    nnoremap h ;

    nnoremap j h
    nnoremap k j
    nnoremap l k
    nnoremap ; l

    vnoremap j h
    vnoremap k j
    vnoremap l k
    vnoremap ; l
]]

-- primeagen remaps
-- sets it to return to netrw (project view) view
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- moves visual lines with capital K and L
vim.keymap.set('v', 'K', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'L', ":m '<-2<CR>gv=gv")

-- keeps your cursor at the same place after appending line below
vim.keymap.set('n', 'J', 'mzJ`z')
-- keeps c-d and c-u centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- allows search terms to say centered
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland
-- these do things around system clipboard
vim.keymap.set('n', '<leader>y', [["+y]])
vim.keymap.set('v', '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- llows you to replace whatever word you're already on
vim.keymap.set('n', '<leader>l', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Rep[L]aces the word currently on' })

-- turns current file to an executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
