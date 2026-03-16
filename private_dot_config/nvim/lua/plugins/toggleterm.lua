return {
  "akinsho/toggleterm.nvim",
  opts = {
    direction = "float",
  },
}

-- local Terminal = require("toggleterm.terminal").Terminal
--
-- local float_term = Terminal:new({
--   direction = "float",
--   hidden = true,
-- })
--
-- vim.keymap.set({ "n", "t" }, "<C-`>", function()
--   float_term:toggle()
-- end, { desc = "Toggle Float Terminal" })
