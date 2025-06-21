local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Example keymap
keymap.set("n", "<C-a>", "gg<S-v>G", opts)
