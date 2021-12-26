function java()
    vim.cmd [[packadd! vim-junit-jump]]
    vim.cmd[[

        "JavaUnitJump设置
        nnoremap <leader>e :<c-u>JavaJUnitJump<cr>
    ]]
end
java()
