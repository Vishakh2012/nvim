local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>sf', builtin.live_grep, {});
vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ft', builtin.tags, {})
vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { silent = true })
vim.keymap.set('n', '<leader>tm', ':Telescope marks<CR>', { silent = true })
vim.keymap.set('n', '<leader>tr', ':Telescope registers<CR>', { silent = true })
vim.keymap.set('n', '<leader>tb', ':Telescope buffers<CR>', { silent = true })


