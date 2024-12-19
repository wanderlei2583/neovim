local opts = {
  opts = {
    cursor_color = "#d3cdc3",
    normal_bg = "#282828",
    smear_between_buffers = true,
    smear_between_neighbor_lines = true,
    scroll_buffer_space = true,
    legacy_computing_symbols_support = false,
  },
}

require("smear_cursor").setup(opts)
