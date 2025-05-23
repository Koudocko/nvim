return {
  'ThePrimeagen/harpoon',

  opts = {},

  config = function(_, opts)
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-y>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-s>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-b>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<C-n>", function() ui.nav_file(4) end)
    vim.keymap.set("n", "<C-j>", function() ui.nav_file(5) end)
    vim.keymap.set("n", "<C-k>", function() ui.nav_file(6) end)
    vim.keymap.set("n", "<C-p>", function() ui.nav_file(7) end)
  end
}
