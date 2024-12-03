local options = {
  ensure_installed = {
    "bash",
    "fish",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
    "gomod",
    "gosum",
    "gotmpl",
    "gowork",
    "go",
    "python",
    "html",
  },
  auto_install = true,
  sync_install = false,
  ignore_install = { "" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}
require("nvim-treesitter.configs").setup(options)
