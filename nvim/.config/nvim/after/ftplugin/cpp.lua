-- TIP: If you want custom color of colorcolumn local to window
-- do
--     local ns = vim.api.nvim_create_namespace('gitcommit')
--     vim.api.nvim_set_hl(ns, 'ColorColumn', { link = '#ff0000' })
--     vim.api.nvim_win_set_hl_ns(0, ns)
-- end
vim.bo.textwidth = 79
vim.wo.colorcolumn = '+0'

vim.cmd([[set tabstop=4]])
vim.cmd([[set shiftwidth=4]])
vim.cmd([[set expandtab]])

-- highlight extrawhite space with light blue background
vim.cmd([[highlight ExtraWhitespace ctermbg=lightblue guibg=lightblue
match ExtraWhitespace /\s\+$\|\t/]])

-- stuff to prevent the light blue highlighting from showing up at the end of
-- lines when you're in insert mode. i.e., everytime you enter a space as you're
-- entering text the highlighting will kick in, which can be annoying. this will
-- make the highlighting only show up if you finish editing and leave some extra
-- whitespace

vim.cmd([[autocmd BufWinEnter * match ExtraWhitespace /\s\+$\|\t/]])
vim.cmd([[autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\t\%#\@<!/]])
vim.cmd([[autocmd InsertLeave * match ExtraWhitespace /\s\+$\|\t/]])
vim.cmd([[autocmd BufWinLeave * call clearmatches()]])
