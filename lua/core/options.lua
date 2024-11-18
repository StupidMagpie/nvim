local opt = vim.opt
-- 局部变量
-- 绝对行号和相对行号
opt.number = true
opt.relativenumber = true
vim.o.statuscolumn = "%l%=%s%=%r%s"
-- 设置tab
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 光标提示
opt.cursorline = true

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口在右侧和下边
opt.splitright = true
opt.splitbelow = true
-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 主题 --
vim.cmd("colorscheme onedark")
