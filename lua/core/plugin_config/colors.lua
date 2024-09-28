function ColorMyPencils(color)
  if color == "default" then
    vim.cmd.colorscheme("default")
  else
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
  end

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
