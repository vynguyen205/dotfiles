------------------- INFO ----------------------
-- See `https://learnxinyminutes.com/lua/` for more lua info

-- See `:help vim.keymap.set()` for more info
-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

-- <cmd> equivalent to `:`
-- <CR> equivalent to `enter`

-- <C-w> is equivalent to `:wincmd`
-- See `:help wincmd`

-- Diagnostics Config & Keymaps
-- See `:help vim.diagnostics.Opts`
------------------------------------------------

-- Remap Esc in Insert Mode
vim.keymap.set("i", "jk", "<Esc>")

-- source file and specific line(s) of code
vim.keymap.set("n", "<leader><leader>x", ":% source<CR>")

-- clear highlights on search
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", { silent = true })

-- move code
vim.keymap.set("v", "<", "<gv", { desc = "Move Code Left" })
vim.keymap.set("v", ">", ">gv", { desc = "Move Code Right" })

-- Move the cursor based on physical lines, not the actual lines.
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })

-- Window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus Lower Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus Upper Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus Right Window" })
vim.keymap.set("n", "<C-Up>", ":resize +5<CR>", { desc = "Increase Window Width" })
vim.keymap.set("n", "<C-Right>", ":verticle resize +5<CR>", { desc = "Increase Window Height" })

-- CTRL-W K - move curr window to top
-- CTRL-W J - move curr window to bottom
-- CTRL-W H - move curr window to left
-- CTRL-W L - move curr window to right

-- Buffer
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-h>", ":bprev<CR>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete Buffer" })

-- Diagnostics
vim.keymap.set("n", "<leader>cd", ":lua vim.diagnostic.open_float()<CR>", { desc = "Diagnostic", silent = true })

----------------- Plugins ------------------

-- Obsidian
vim.keymap.set("n", "<leader>on", "<cmd>Obsidian quick_switch<CR>", { desc = "Obsidian Find Notes", silent = true })
vim.keymap.set("n", "<leader>ov", "<cmd>Obsidian search<CR>", { desc = "Obsidian Grep Vault", silent = true })
vim.keymap.set("n", "<leader>oi", "<cmd>Obsidian paste_img<CR>", { desc = "Obsidan Paste Img", silent = true })

--fzf
vim.keymap.set({ "n", "v" }, "<leader>fd", "<cmd>FzfLua files<CR>", { desc = "Find Files" })
vim.keymap.set({ "n", "v" }, "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "Find Files" })
vim.keymap.set({ "n", "v" }, "<leader>fl", "<cmd>FzfLua highlights<CR>", { desc = "Find Highlights" })
vim.keymap.set({ "n", "v" }, "<leader>fh", "<cmd>FzfLua helptags<CR>", { desc = "Find Help" })
vim.keymap.set({ "n", "v" }, "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Find Buffers" })
vim.keymap.set({ "n", "v" }, "z=", "<cmd>FzfLua spell_suggest<CR>", { desc = "Spell Suggestions" })
