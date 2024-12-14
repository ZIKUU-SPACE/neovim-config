-- 基本オプションの設定
require('options')

-- キーマップの設定
require('keymaps')

-- プラグインの設定
require('plugins')

local themeStatus, kanagawa = pcall(require, "kanagawa")

if themeStatus then
    vim.cmd("colorscheme kanagawa")
else
    return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})

