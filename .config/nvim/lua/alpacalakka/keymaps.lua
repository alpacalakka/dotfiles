local map = vim.keymap.set
map('n', '<leader>w', '<cmd>w<CR>',           { desc = 'Save file' })
map('n', '<leader>q', '<cmd>qa<CR>',          { desc = 'Quit all' })
map('n', '<leader>l', '<cmd>bnext<CR>',       { desc = 'Next buffer' })
map('n', '<leader>h', '<cmd>bprevious<CR>',   { desc = 'Prev buffer' })
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Find files' })
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>',  { desc = 'Live grep' })
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>',    { desc = 'Buffers'   })
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>',  { desc = 'Help tags' })

