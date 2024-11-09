-- leader key --
vim.g.mapleader = " "


local keymap = vim.keymap
-- insert --

-- visual --
keymap.set("v","J",":m '>+1<CR>gv=gv'")
keymap.set("v","K",":m '<-2<CR>gv=gv'")
-- normal --
-- 窗口
keymap.set("n","<leader>sv","<C-w>v")
keymap.set("n","<leader>sh","<C-w>s")
keymap.set("n","<leader>wj","<C-w>j")
keymap.set("n","<leader>wk","<C-w>k")
keymap.set("n","<leader>wl","<C-w>l")
keymap.set("n","<leader>wh","<C-w>h")
-- 取消高亮
keymap.set("n","<leader>nh",":nohl<CR>")

-- 文件树 --
keymap.set("n","<leader>t",":NvimTreeToggle<CR>")

-- move --
keymap.set("n","<A-j>","5j")
keymap.set("n","<A-k>","5k")
keymap.set("n","<A-h>","5h")
keymap.set("n","<A-l>","5l")
