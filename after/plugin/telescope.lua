local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>sf', builtin.live_grep, {});
vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ft', builtin.tags, {})

