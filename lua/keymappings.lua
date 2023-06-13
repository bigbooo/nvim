local keymap = vim.keymap

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- NvimTree
keymap.set('n', 'so', ':SymbolsOutlineOpen<Return>')
keymap.set('n', 'to', ':NvimTreeOpen<Return>')

-- BufferLine
keymap.set('n', 'tx', ':bdelete!<Return>')
keymap.set('n', 'L', ':BufferLineCycleNext<CR>')
keymap.set('n', 'H', ':BufferLineCyclePrev<CR>')
keymap.set('n', 'x', ':BufferLinePickClose<CR>')

keymap.set('n', 'fi', ':ts <C-R>=expand("<cword>")<CR><CR>')
keymap.set('n', 'fo', '<C-o>')
keymap.set('n', 'fp', ':ptag <C-R>=expand("<cword>")<CR><CR>')
keymap.set('n', 'fj', 'gf')

-- Floaterm
keymap.set('n', '<leader>t', ':ToggleTerm<Return>')
keymap.set('t', '<ESC>', [[<C-\><C-n>]])
keymap.set('t', '<leader>t', ':ToggleTerm<Return>')

keymap.set('n', '<C-p>', ':vsplit<Return><C-w>w:ptag <C-R>=expand("<cword>")<CR><CR>:q<Return>')

--Telecope
keymap.set('n', '<leader>p', ':Telescope projects<CR>')
keymap.set('n', '<leader>f', ':Telescope find_files<CR>')
keymap.set('n', '<leader>r', 'yiw:Telescope live_grep<CR>')

--DashBoard
keymap.set('n', 'fd', '<C-w>c:Dashboard<Return>')
keymap.set('n', '<S-f>d', ':Dashboard<Return>')

--HSync
keymap.set('n', '<leader>w', ':w<CR>:Hupload<CR>')
