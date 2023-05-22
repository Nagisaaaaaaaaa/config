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

vim.keymap.set("n", "m", "<Cmd>call VSCodeNotify('bookmarks.toggle')<CR>")
vim.keymap.set("n", "<C-i>", "<Cmd>call VSCodeNotify('bookmarks.jumpToPrevious')<CR>")
vim.keymap.set("n", "<C-o>", "<Cmd>call VSCodeNotify('bookmarks.jumpToNext')<CR>")

vim.keymap.set("n", "<tab>", "<Cmd>call VSCodeNotify('textmarker.toggleHighlight')<CR>")





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
vim.keymap.set("n", "j", "<Cmd>call VSCodeNotify('cursorDown')<CR>")
vim.keymap.set("n", "k", "<Cmd>call VSCodeNotify('cursorUp')<CR>")
vim.keymap.set("n", "<DOWN>", "<Cmd>call VSCodeNotify('cursorDown')<CR>")
vim.keymap.set("n", "<UP>", "<Cmd>call VSCodeNotify('cursorUp')<CR>")
-- vim.keymap.set("n", "<C-j>", "<C-e>gj<C-e>gj<C-e>gj<C-e>gj<C-e>gj")
-- vim.keymap.set("n", "<C-k>", "<C-y>gk<C-y>gk<C-y>gk<C-y>gk<C-y>gk")
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

vim.keymap.set("v", "<C-j>", "<C-e>gj<C-e>gj<C-e>gj<C-e>gj<C-e>gj")
vim.keymap.set("v", "<C-k>", "<C-y>gk<C-y>gk<C-y>gk<C-y>gk<C-y>gk")
vim.keymap.set("v", "<C-h>", "^")
vim.keymap.set("v", "<C-l>", "$")

vim.keymap.set("v", "<space>", "\"+y/\\V<C-r>\"<CR>N")

vim.keymap.set("v", "i", "I")
vim.keymap.set("v", "a", "A")





-- handle plugin bugs

vim.keymap.set("n", "2j", "j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "3j", "2j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "4j", "3j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "5j", "4j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "6j", "5j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "7j", "6j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "8j", "7j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "9j", "8j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "10j", "9j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })

vim.keymap.set("n", "11j", "10j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "12j", "11j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "13j", "12j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "14j", "13j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "15j", "14j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "16j", "15j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "17j", "16j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "18j", "17j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "19j", "18j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "20j", "19j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })

vim.keymap.set("n", "21j", "20j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "22j", "21j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "23j", "22j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "24j", "23j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "25j", "24j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "26j", "25j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "27j", "26j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "28j", "27j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "29j", "28j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "30j", "29j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })

vim.keymap.set("n", "31j", "30j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "32j", "31j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "33j", "32j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "34j", "33j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "35j", "34j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "36j", "35j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "37j", "36j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "38j", "37j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "39j", "38j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "40j", "39j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })

vim.keymap.set("n", "41j", "40j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "42j", "41j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "43j", "42j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "44j", "43j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "45j", "44j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "46j", "45j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "47j", "46j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "48j", "47j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "49j", "48j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })
vim.keymap.set("n", "50j", "49j<Cmd>call VSCodeNotify('cursorDown')<CR>", { remap = true })

vim.keymap.set("n", "2k", "k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "3k", "2k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "4k", "3k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "5k", "4k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "6k", "5k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "7k", "6k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "8k", "7k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "9k", "8k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "10k", "9k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })

vim.keymap.set("n", "11k", "10k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "12k", "11k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "13k", "12k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "14k", "13k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "15k", "14k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "16k", "15k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "17k", "16k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "18k", "17k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "19k", "18k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "20k", "19k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })

vim.keymap.set("n", "21k", "20k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "22k", "21k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "23k", "22k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "24k", "23k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "25k", "24k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "26k", "25k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "27k", "26k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "28k", "27k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "29k", "28k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "30k", "29k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })

vim.keymap.set("n", "31k", "30k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "32k", "31k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "33k", "32k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "34k", "33k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "35k", "34k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "36k", "35k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "37k", "36k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "38k", "37k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "39k", "38k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "40k", "39k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })

vim.keymap.set("n", "41k", "40k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "42k", "41k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "43k", "42k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "44k", "43k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "45k", "44k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "46k", "45k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "47k", "46k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "48k", "47k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "49k", "48k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
vim.keymap.set("n", "50k", "49k<Cmd>call VSCodeNotify('cursorUp')<CR>", { remap = true })
