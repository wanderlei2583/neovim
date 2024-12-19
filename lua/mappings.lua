require("nvchad.mappings")

-- add yours here
local map = vim.keymap.set
map("n", "-", "<CMD>Oil --float<CR>", { desc = "Abrir diretório atual." })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>q", "<cmd> wqa <cr>", { desc = "Fechar e Salvar tudo." })
map("n", "<leader>Q", "<cmd> qa <cr>", { desc = "Fechar tudo." })
map("n", "<leader>h", "<cmd> noh <cr>", { desc = "Limpar Highlight" })
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Preview Markdown" })
map("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", { desc = "Stop Markdown" })

map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<leader>gf", "<cmd>LazyGitFilterCurrentFile<cr>", { desc = "LazyGitFilterCurrentFile" })

-- Comandos básicos
map("n", "<leader>rr", ":Rest run<CR>", { desc = "Run request under cursor" })
map("n", "<leader>rl", ":Rest last<CR>", { desc = "Run last request" })
map("n", "<leader>rp", ":Rest preview<CR>", { desc = "Preview request" })

-- Comandos Ex
map("n", "<leader>ro", ":Rest open<CR>", { desc = "Open result panel" })
map("n", "<leader>rL", ":Rest logs<CR>", { desc = "Edit log file" })
map("n", "<leader>rc", ":Rest cookies<CR>", { desc = "Edit cookies file" })
map("n", "<leader>res", ":Rest env show<CR>", { desc = "Show current env file" })
map("n", "<leader>ree", ":Rest env select<CR>", { desc = "Select env file" })
map("n", "<leader>rh", ":hor Rest open<CR>", { desc = "Open result panel (horizontal split)" })

-- Funções interativas
map("n", "<leader>rm", function()
  vim.ui.input({ prompt = "Request name: " }, function(name)
    if name then
      vim.cmd("Rest run " .. name)
    end
  end)
end, { desc = "Run named request" })

map("n", "<leader>ret", function()
  vim.ui.input({ prompt = "Env file path: " }, function(path)
    if path then
      vim.cmd("Rest env set " .. path)
    end
  end)
end, { desc = "Set env file path" })
