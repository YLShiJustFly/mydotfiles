function translater()
    vim.cmd [[packadd! vim-youdao-translater]]
    vim.cmd[[
        "翻译
        vnoremap <silent> <leader>yd <esc>:Ydv<cr>
        nnoremap <silent> <leader>yd :Ydc<cr>
        noremap <leader>yde :Yde<cr>
    ]]
end
translater()
