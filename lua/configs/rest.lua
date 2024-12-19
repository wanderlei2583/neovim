local opts = {
  -- Result split horizontal position
  -- 'left' | 'right' | 'top' | 'bottom'
  result_split_horizontal = false,

  -- Keep the http file buffer above|left when split horizontal|vertical
  result_split_in_place = false,

  -- Skip SSL verification
  skip_ssl_verification = false,

  -- Highlight request on run
  highlight = {
    enabled = true,
    timeout = 150,
  },

  -- Jump to request line on run
  jump_to_request = false,

  -- Env file paths
  env_file = ".env",

  -- Custom dynamic variables for request
  custom_dynamic_variables = {},

  -- Formatters for response data
  formatters = {
    json = "jq",
    html = function(body)
      return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
    end,
  },
}
require("rest-nvim").setup(opts)
