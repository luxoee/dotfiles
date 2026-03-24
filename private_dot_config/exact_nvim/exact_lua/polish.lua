-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- terminal keymaps

local Terminal = require("toggleterm.terminal").Terminal

local float_term = Terminal:new {
  direction = "float",
  hidden = true,
}

vim.keymap.set({ "n", "t" }, "<C-`>", function() float_term:toggle() end, { desc = "Toggle Float Terminal" })

vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]])

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

vim.opt.clipboard = ""

if vim.fn.has('nvim-0.10') == 1 then
  vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
      ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
    },
  }
end

vim.keymap.set('n', '<Leader>y', ':%y+<CR>', { desc = 'Yank all to local clipboard', silent = true })
vim.keymap.set('v', '<Leader>y', '"+y', { desc = 'Yank selection to local clipboard', silent = true })
vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all', noremap = true })
