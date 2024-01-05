-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

if vim.g.neovide then
  vim.o.guifont = "Iosevka Nerd Font:h14"
  vim.g.neovide_scroll_animation_length = 0.05
end

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
