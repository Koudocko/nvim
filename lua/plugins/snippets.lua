return {
    {
        "L3MON4D3/LuaSnip",

        dependencies = { "rafamadriz/friendly-snippets" },

        config = function()
            local ls = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()

            vim.keymap.set({"i", "s"}, "<C-f>", function() ls.jump(1) end, {silent = true})
            vim.keymap.set({"i", "s"}, "<C-b>", function() ls.jump(-1) end, {silent = true})
        end,
    }
}

