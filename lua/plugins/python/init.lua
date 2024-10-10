return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    -- Setup LSP for Pyright
    require("lspconfig").pyright.setup({
      capabilities = capabilities,
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "off", -- 关闭类型检查
            reportWildcardImportFromLibrary = "none", -- 禁用对库的通配符导入警告
          },
        },
      },
    })
  end,
}
