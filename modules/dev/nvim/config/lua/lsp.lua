-- enable LSP servers (new API)

-- Go
vim.lsp.config["gopls"] = {}
vim.lsp.enable("gopls")

-- Kotlin
vim.lsp.config["kotlin_language_server"] = {}
vim.lsp.enable("kotlin_language_server")

-- Terraform
vim.lsp.config["terraformls"] = {}
vim.lsp.enable("terraformls")

-- Nix
vim.lsp.config["nil_ls"] = {}
vim.lsp.enable("nil_ls")

-- Lua
vim.lsp.config["lua_ls"] = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}
vim.lsp.enable("lua_ls")

-- JSON / YAML
vim.lsp.config["jsonls"] = {}
vim.lsp.enable("jsonls")

vim.lsp.config["yamlls"] = {}
vim.lsp.enable("yamlls")