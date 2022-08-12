function chat()
    vim.cmd [[packadd! vim-chat]]
    vim.cmd [[
        nnoremap <silent> <leader>wr: call chat#weixin#start()<cr>
        nnoremap <silent> <leader>wo: call chat#weixin#OpenMsgWin()<cr>
        let g:chatting_close_win_char = '<m-l>' 
    ]]
end
chat()
