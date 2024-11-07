local utils = require("greenrose.utils")

local M = {}

function M.setup(options)
  require("greenrose.config").setup(options)
end

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "greenrose"

  utils.apply_highlights()
end

return M
