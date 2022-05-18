function syntastic()
    vim.cmd [[packadd! syntastic]]
    vim.cmd[[

        "syntastic实时语法分析
        let g:syntastic_check_on_open = 1
        let g:syntastic_check_on_wq = 0
        let g:syntastic_yacc_checkers = ['bison']
        let g:syntastic_enable_signs = 1
        let g:syntastic_error_symbol='✗'
        let g:syntastic_warning_symbol= '⚡'

        nnoremap <silent> <leader>jc :SyntasticToggleMode<cr>
    ]]
end
syntastic()
