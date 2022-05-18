function whichkey()
    vim.cmd [[packadd! vim-which-key]]
    vim.cmd[[
        "vim-which-key设置
        nnoremap <silent> <leader> :WhichKey ';'<cr>
    ]]
end
whichkey()
