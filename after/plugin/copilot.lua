vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<C-]>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<C-[>', '<Plug>(copilot-previous)')
vim.keymap.set('i', '<C-.>', '<Plug>(copilot-dismiss)')
vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<CR>")', {
          expr = true,
          replace_keycodes = false
        })
