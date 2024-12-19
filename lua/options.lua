-- Primeiro carregue as opções do NvChad
require("nvchad.options")

-- Aguarde um momento para garantir que as opções foram carregadas
vim.schedule(function()
  -- Suas opções personalizadas
  local o = vim.o
  local autocmd = vim.api.nvim_create_autocmd

  o.encoding = "utf-8"
  o.fileencoding = "utf-8"
  o.cursorlineopt = "both"
  o.relativenumber = true
  o.spelllang = "pt_br"

  -- Autocmd para formatação de arquivos Go
  autocmd("BufWritePre", {
    pattern = "*.go", -- Corrigi o pattern para incluir *
    callback = function()
      vim.lsp.buf.format({ async = false })
    end,
  })
end)
