return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    --C/C++
    lspconfig.clangd.setup{}
    lspconfig.ccls.setup{}
    lspconfig.cmake.setup{}

    --Vim LSP
    lspconfig.vimls.setup{}

    --Lua LSP
    lspconfig.lua_ls.setup{}
  end,
}
