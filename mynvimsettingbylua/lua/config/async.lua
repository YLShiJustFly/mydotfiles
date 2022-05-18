function async()
    vim.cmd [[packadd! vim-terminal-help]]
    vim.cmd [[packadd! asyncrun.vim]]
    vim.cmd [[packadd! asynctasks.vim]]
    vim.cmd [[

        "设置vim-terminal-help
        let g:terminal_kill = "term"
        let g:terminal_list = 0
        let g:terminal_rootmarkers=['.git','compile_commands.json','.root']
        let g:terminal_cwd = 2
        let g:terminal_height = 24
        let g:terminal_fixheight = 1
        let  g:terminal_pos="tab"
        if has('nvim')
            function! TerminalQuit()
                let bid = get(t:, '__terminal_bid__', -1)
                if bid < 0
                    return
                endif
                let name = bufname(bid)
                if name == ''
                    return
                endif
                exec "bw! ". name
            endfunc
            au TermClose * call TerminalQuit()
        endif
        "设置asyncrun
        let g:asyncrun_rootmarks = ['.git', 'compile_commands.json', '.root']
        "任务结束时候响铃提醒
        let g:asyncrun_bell = 1
        let g:asyncrun_open = 6
        "nnoremap <leader>rb :AsyncRun -mode=tab -focus=1 -pos=tab build<cr>
        "nnoremap <leader>rr :AsyncRun -mode=tab -focus=1 -pos=tab run<cr>
        "nnoremap <leader>rs :AsyncStop<cr>
        "nnoremap <leader>rg :AsyncRun -mode=tab -focus=1 -pos=tab gdb<cr>
        "设置asynctasks
        let g:asynctasks_term_reuse = 1
        let g:asynctasks_term_focus = 1
        let g:asynctasks_term_pos = 'tab'
        let g:asynctasks_term_rows = 10    " set height for the horizontal terminal split
        let g:asynctasks_term_cols = 80    " set width for vertical terminal split
        nnoremap <leader>rb :AsyncTaskProfile debug release<cr> :AsyncTask build<cr>
        nnoremap <leader>rc :AsyncTaskProfile debug release<cr> :AsyncTask scp<cr>
        "nnoremap <leader>rr :AsyncTask run<cr>
        let g:asynctasks_term_focus= 0

    ]]
end
async()

function _G.MyTaskFinish(command, mode)
    if vim.g.asyncrun_code == 0
    then
        require("notify")(command .. " " .. vim.g.task_for_notify .. " with mode " .. mode .. "\ntask success!\n", "info")
    else
        require("notify")(command .. " " .. vim.g.task_for_notify .. " with mode " .. mode .. "\ntask failed!\n" , "error")
    end
end
