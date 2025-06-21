local map = vim.keymap.set
map('n', '<leader>w', '<cmd>w<CR>',           { desc = 'Save file' })
map('n', '<leader>q', '<cmd>qa<CR>',          { desc = 'Quit all' })
map('n', '<leader>l', '<cmd>bnext<CR>',       { desc = 'Next buffer' })
map('n', '<leader>h', '<cmd>bprevious<CR>',   { desc = 'Prev buffer' })

