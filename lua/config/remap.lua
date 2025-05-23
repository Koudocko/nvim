vim.g.mapleader = " "
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set({"n", "v"}, "<leader>D", [["_D]])
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set({"n", "v"}, "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "U", "<C-R>")
vim.keymap.set("n", "<BS>", "O<Esc>")
vim.keymap.set("n", "<C-l>", "O<Esc>")
vim.keymap.set("i", "<C-l>", "<Esc>O")
vim.keymap.set("n", "<leader>r", "<C-l>")
vim.keymap.set("n", "<CR>", "o<Esc>")
vim.keymap.set("n", "<C-w>e", ":edit .<cr>", { silent = true } )
vim.keymap.set("n", "<C-q>", vim.cmd.Ex)
vim.keymap.set("c", "<C-k>", "<up>")
vim.keymap.set("c", "<C-j>", "<down>")
vim.keymap.set("c", "<C-b>", "<left>")
vim.keymap.set("c", "<C-f>", "<right>")
vim.keymap.set("c", "<C-a>", "<home>")
vim.keymap.set("c", "<C-e>", "<end>")
vim.keymap.set("n", "<C-w>b", "<C-w>v")
vim.keymap.set("n", "<C-w>v", "<C-w>s")
vim.keymap.set("n", "<C-w>-", "3<C-w>-")
vim.keymap.set("n", "<C-w>=", "3<C-w>+")
vim.keymap.set("n", "<C-w>+", "<C-w>=")
vim.keymap.set("n", "<C-w>,", "5<C-w><")
vim.keymap.set("n", "<C-w>.", "5<C-w>>")
vim.keymap.set("n", "<C-w><cr>", ":tabnew<cr>", { silent = true })
vim.keymap.set("n", "<C-w>n", ":tabnext<cr>", { silent = true })
vim.keymap.set("n", "<C-w>p", ":tabprev<cr>", { silent = true })
vim.keymap.set("n", "<C-w>x", "<C-w>q")
vim.keymap.set("n", "<C-w>q", ":tabc<cr>", { silent = true })
vim.keymap.set("n", "<C-w>t", ":tabnext<Space>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<C-w>m", function()
  local path = vim.fn.expand("%:p:h")
  vim.cmd.split()
  vim.cmd.term({ "bash", "-c", "cd " .. vim.fn.shellescape(path) .. " && exec bash" })
end, { silent = true })
vim.keymap.set("n", "<C-w>n", function()
  local path = vim.fn.expand("%:p:h")
  vim.cmd.vsplit()
  vim.cmd.term({ "bash", "-c", "cd " .. vim.fn.shellescape(path) .. " && exec bash" })
end, { silent = true })
