function indent()
    vim.cmd [[packadd! indentLine]]
    vim.cmd [[
        "设置vim_indent_guides
        let g:indentLine_enabled = 0
        let g:indentLine_char_list = ['|', '¦', '┆', '┊']
        noremap <leader>in :<c-u>IndentLinesToggle<cr>
        set list lcs=tab:\|\ 
    ]]
end
indent()
