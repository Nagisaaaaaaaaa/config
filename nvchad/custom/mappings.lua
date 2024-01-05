---@type MappingsTable
local M = {}

local neovide_scale_factor_i = 0

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["u"] = {
      function()
        local pos_old = vim.api.nvim_win_get_cursor(0)
        vim.api.nvim_command "normal! `."
        local pos_new = vim.api.nvim_win_get_cursor(0)
        if pos_old[1] == pos_new[1] and pos_old[2] == pos_new[2] then
          vim.api.nvim_command "normal! u`."
        end
      end,
      opts = { silent = true },
    },
    ["*"] = { 'viwy/\\V<C-r>"<CR>N', opts = { silent = true } },
    ["#"] = { 'viwy/?V<C-r>"<CR>N', opts = { silent = true } },
    ["<C-u>"] = { "zz<C-u>", opts = { silent = true } },
    ["<C-d>"] = { "zz<C-d>", opts = { silent = true } },
    ["G"] = { "Gzz", opts = { silent = true } },
    ["<C-=>"] = {
      function()
        if vim.g.neovide then
          neovide_scale_factor_i = neovide_scale_factor_i + 1
          vim.g.neovide_scale_factor = 1 + neovide_scale_factor_i * 0.2
          vim.api.nvim_command "normal! jk"
        end
      end,
    },
    ["<C-->"] = {
      function()
        if vim.g.neovide then
          neovide_scale_factor_i = neovide_scale_factor_i - 1
          vim.g.neovide_scale_factor = 1 + neovide_scale_factor_i * 0.2
          vim.api.nvim_command "normal! jk"
        end
      end,
    },
    ["<C-s>"] = {
      function()
        vim.lsp.buf.format { async = true }
        vim.api.nvim_command "w"
      end,
      "Format and save file",
    },
    ["<C-_>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
    ["<C-/>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<space>"] = { 'y/\\V<C-r>"<CR>N', opts = { silent = true } },
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
    ["<C-/>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
  t = {
    ["<ESC>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
    ["<C-x>"] = {
      function()
        vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true)
        vim.api.nvim_command "q"
      end,
    },
  },
}

-- more keybinds!

return M
