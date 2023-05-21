-- vim.opt.number = true
-- vim.opt.relativenumber = true
-- vim.opt.cursorline = true

vim.opt.expandtab = true   -- replace \t with \s
vim.opt.tabstop = 2        -- width of \t
vim.opt.softtabstop = 2    -- insert mode indent width
vim.opt.shiftwidth = 2     -- normal and visual mode indent width
vim.opt.shiftround = true  -- indent width is an integral multiple of `shiftwidth`

vim.opt.autoindent = true  -- the new line uses the same indent style as the last line
vim.opt.smartindent = true -- braces automatically add indents
vim.opt.smarttab = true    -- automatically judges indent width
vim.opt.cindent = true     -- further optimize for c

vim.opt.showmatch = true   -- highlight brackets

-- vim.opt.noic = true        -- do not ignore case
vim.opt.hlsearch = true    -- search with highlight
vim.opt.incsearch = true   -- jump to the first match while searching

vim.opt.history = 5000     -- use large history
