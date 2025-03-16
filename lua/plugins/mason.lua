return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },  -- Add a comma and put dependencies inside a table
  config = function()
    require("mason").setup()
  end,
}
