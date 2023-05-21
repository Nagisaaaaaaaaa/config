-- enable powershell as your default shell
-- vim.opt.shell = "pwsh.exe -NoLogo"
-- vim.opt.shellcmdflag =
--   "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
-- vim.cmd [[
--   let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
--   let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
--   set shellquote= shellxquote=
-- ]]

-- set a compatible clipboard manager
-- vim.g.clipboard = {
--   copy = {
--     ["+"] = "win32yank.exe -i --crlf",
--     ["*"] = "win32yank.exe -i --crlf",
--   },
--   paste = {
--     ["+"] = "win32yank.exe -o --lf",
--     ["*"] = "win32yank.exe -o --lf",
--   },
-- }

-- function! s:openVSCodeCommandsInVisualMode()
--     normal! gv
--     let visualmode = visualmode()
--     if visualmode == "V"
--         let startLine = line("v")
--         let endLine = line(".")
--         -- the last parameter: 1 means remaining in visual mode after operations
--         --                     0 means exit visual mode
--         call VSCodeNotifyRange("workbench.action.showCommands", startLine, endLine, 1)
--     else
--         let startPos = getpos("v")
--         let endPos = getpos(".")
--         call VSCodeNotifyRangePos("workbench.action.showCommands", startPos[1], endPos[1], startPos[2], endPos[2], 1)
--     endif
-- endfunction
-- -- workaround for calling command picker in visual mode
-- xnoremap <silent> <C-P> :<C-u>call <SID>openVSCodeCommandsInVisualMode()<CR>

require("keymaps")
require("options")
require("plugins")
