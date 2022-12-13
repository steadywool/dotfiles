-- Copy current path to clipboard
vim.cmd('command! CopyPath let @+=expand("%:p:h")')
