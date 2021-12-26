function search()
    vim.cmd [[packadd! ack.vim]]
    vim.cmd [[packadd! ag.vim]]
    vim.cmd [[packadd! ctrlsf.vim]]
    vim.cmd[[

        "设置ack
        if executable('ag')
            let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column --ignore test'
        endif

        cnoreabbrev Ack Ack!
        nnoremap <leader>ae :Ack!<space>
        "如果不输入任何搜索参数,则默认以光标下的单词为搜索条件,并把它映射到<leader>+aa上
        nnoremap <leader>aa :Ack!<cr>
        "高亮搜索结果
        let g:ackhighlight = 1

        "设置ag
        let g:ag_prg="ag --vimgrep --nogroup --nocolor --column"
        nnoremap <leader>te :Ag!<space>
        nnoremap <leader>ta :Ag!<cr>
        "设置ctrlsf
        let g:ctrlsf_default_root = '.root'
        nmap <leader>ah :CtrlSF<space>

    ]]
end
search()
