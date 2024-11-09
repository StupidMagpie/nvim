require("plugins.plugins-setup")
require("plugins.lualine")
require("plugins.nvimtree")
require("plugins.treesitter")
require("plugins.cmp")
require("plugins.lsp")

-- self option --

require("core.options")
require("core.keymaps")


local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}
lspconfig.ts_ls.setup{}
lspconfig.lua_ls.setup{}
lspconfig.clangd.setup{}

