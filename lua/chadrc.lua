---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    Variable = { italic = true },
    ["@variable"] = { italic = true },
    Function = { italic = true }, -- Grupo Function (padrão)
    ["@function"] = { italic = true }, -- TreeSitter @function
    ["@function.call"] = { italic = true }, -- TreeSitter chamada de função
    ["@method"] = { italic = true }, -- TreeSitter método
    ["@type"] = { italic = false }, -- Mantém outros tipos normais
  },
}

return M
