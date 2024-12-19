-- lua/plugins/configs/git-blame.lua
local present, gitblame = pcall(require, "gitblame")
if not present then
  return
end

gitblame.setup({
  -- Formato da mensagem de blame
  message_template = "   <author> • <summary> • <date> • <commit-short>",

  -- Formato da data
  date_format = "%d/%m/%y %H:%M",

  -- Mensagem quando não há commit
  message_when_not_committed = "   Ainda não commitado",

  -- Highlight do texto do blame
  highlight_group = "GitBlameVirtual",

  -- Ignorar whitespace nas comparações
  ignore_whitespace = true,

  -- Habilitar ao abrir um arquivo
  enabled = true,

  -- Atrasar o blame para melhor performance
  delay = 1000,

  -- Argumentos virtuais do texto
  virtual_text_options = {
    -- Posição do texto virtual
    virt_text_pos = "eol",

    -- Prioridade do texto virtual
    virt_text_priority = 100,
  },

  -- Preview do commit completo
  preview_options = {
    -- Posição da janela de preview
    relative = "cursor",

    -- Tamanho da janela
    row = 1,
    col = 1,

    -- Estilo da borda
    border = "rounded",
  },

  -- Reduzir uso de memória
  reduce_memory_usage = false,
})

-- Configuração de cores personalizadas
vim.cmd([[
    highlight GitBlameVirtual guifg=#7c7c7c gui=italic
]])

-- Atalhos personalizados
vim.keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gp", ":GitBlameOpenCommitURL<CR>", { noremap = true, silent = true })
