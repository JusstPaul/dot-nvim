local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol  = require 'vim.lsp.protocol' 
local util      = require 'lspconfig.util'

local on_attach = function(client, bufnr)
  -- Formatting
  if client.server_capabilities.documentFormattingProvider then
    api.nvim_command [[augroup Format]]
    api.nvim_command [[autocmd! * <buffer>]]
    api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    api.nvim_command [[augroup END]]
  end
end

-- Setup
---- Typescript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.tsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  cmd = {
    "typescript-language-server",
    "--stdio"
  }
}

---- PHP
nvim_lsp.intelephense.setup {
  on_attach = on_attach,
  filetypes = {
    "php"
  },
  cmd = {
    "intelephense",
    "--stdio"
  }
}

---- Svelte
nvim_lsp.svelte.setup {
  on_attach = on_attach,
  cmd = { 
    "svelteserver",
    "--stdio"
  }
}

---- Vue

nvim_lsp.volar.setup {
  on_attach = on_attach,
  filetypes = {
    "vue"
  },
}
