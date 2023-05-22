-- please use tools such as Microsoft PowerToys to do these global remaps first
-- then, you are ready to enjoy the power of vim
--   keyboard:
--     caps lock     -> ctrl
--     ctrl (right)  -> caps lock
--     '             -> backspace
--     backspace     -> enter
--     enter         -> '
--   shortcuts:
--     shift + '     -> "
--     caps lock + ; -> enter
--     caps lock + ' -> '





-- leader

vim.g.mapleader = "^"





-- plugins

vim.keymap.set("n", "f", ":HopChar1<CR>")
vim.keymap.set("n", "F", ":HopChar2<CR>")
vim.keymap.set("n", ";", ":HopWord<CR>")





-- register usings

vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")
vim.keymap.set("n", "p", "\"+p")
vim.keymap.set("n", "P", "\"+P")
vim.keymap.set("n", "d", "\"+d")
vim.keymap.set("n", "D", "\"+D")
vim.keymap.set("n", "c", "\"+c")
vim.keymap.set("n", "C", "\"+C")
vim.keymap.set("n", "x", "\"+x")
vim.keymap.set("n", "X", "\"+X")
vim.keymap.set("n", "s", "\"+s")
vim.keymap.set("n", "S", "\"+S")

vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("v", "Y", "\"+Y")
vim.keymap.set("v", "p", "\"+p")
vim.keymap.set("v", "P", "\"+P")
vim.keymap.set("v", "d", "\"+d")
vim.keymap.set("v", "D", "\"+D")
vim.keymap.set("v", "c", "\"+c")
vim.keymap.set("v", "C", "\"+C")
vim.keymap.set("v", "x", "\"+x")
vim.keymap.set("v", "X", "\"+X")
vim.keymap.set("v", "s", "\"+s")
vim.keymap.set("v", "S", "\"+S")





-- insert mode mappings

-- vim.keymap.set("i", "fj", "<ESC>")
-- vim.keymap.set("i", "f;", "<ESC>A;<ESC>")

-- vim.keymap.set("i", "<C-j>", "<DOWN>")
-- vim.keymap.set("i", "<C-k>", "<UP>")
-- vim.keymap.set("i", "<C-h>", "<LEFT>")
-- vim.keymap.set("i", "<C-l>", "<RIGHT>")
-- vim.keymap.set("i", "<C-e>", "<ESC>ea")
-- vim.keymap.set("i", "<C-b>", "<ESC>bi")
-- vim.keymap.set("i", "<C-a>", "<ESC>A")
-- vim.keymap.set("i", "<C-i>", "<ESC>I")

-- vim.keymap.set("i", "<C-c>", "<ESC>ciw")
-- vim.keymap.set("i", "<C-v>", "<ESC>pa")





-- normal mode mappings

-- vim.keymap.set("n", "j", "gj")
-- vim.keymap.set("n", "k", "gk")
-- vim.keymap.set("n", "<C-j>", "<C-e>gj")
-- vim.keymap.set("n", "<C-k>", "<C-y>gk")
vim.keymap.set("n", "<C-h>", "^")
vim.keymap.set("n", "<C-l>", "$")
-- vim.keymap.set("n", "<C-S-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-S-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-S-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-S-l>", "<C-w>l")

vim.keymap.set("n", "<space>", "viw")

-- vim.keymap.set("n", "z", "zz")
-- vim.keymap.set("n", "<C-z>", "zz")

vim.keymap.set("n", "<CR>", "o")

vim.keymap.set("n", "<", "<<")
vim.keymap.set("n", ">", ">>")

-- vim.keymap.set("n", "<A-j>", ":m+1<CR>")
-- vim.keymap.set("n", "<A-k>", ":m-2<CR>")

vim.keymap.set("n", "G", "Gzz")

-- vim.keymap.set("n", "<C-n>", "zc")
-- vim.keymap.set("n", "<C-m>", "zo")

vim.keymap.set("n", "<C-s>", ":w<CR>")

vim.keymap.set("n", "<C-[>", "{")
vim.keymap.set("n", "<C-]>", "}")

is_first_u = 1

function u()
  if is_first_u == 1 then
    vim.api.nvim_command("normal! `.")
  else
    vim.api.nvim_command("normal! u")
  end
  is_first_u = 2
end

function ctrl_r()
  is_first_u = 2
end

vim.api.nvim_create_autocmd(
  "CursorMoved",
  {
    callback =
      function()
        if is_first_u == 2 then
          is_first_u = 0
        else
          is_first_u = 1
        end
      end
  }
)
vim.keymap.set("n", "u", ":lua u()<CR>")
vim.keymap.set("n", "<C-r>", "<C-r>:lua ctrl_r()<CR>")

vim.keymap.set("n", "gd", "<Cmd>call VSCodeNotify('editor.action.peekDefinition')<CR>");
vim.keymap.set("n", "gD", "<Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>");
vim.keymap.set("n", "gf", "<Cmd>call VSCodeNotify('editor.action.peekDeclaration')<CR>");
vim.keymap.set("n", "gF", "<Cmd>call VSCodeNotify('editor.action.revealDeclaration')<CR>");





-- visual mode mappings

vim.keymap.set("v", "<c-j>", "<c-e>gj")
vim.keymap.set("v", "<c-k>", "<c-y>gk")
vim.keymap.set("v", "<C-h>", "^")
vim.keymap.set("v", "<C-l>", "$")

vim.keymap.set("v", "<space>", "\"+y/\\V<C-r>\"<CR>N")

vim.keymap.set("v", "i", "I")
vim.keymap.set("v", "a", "A")
