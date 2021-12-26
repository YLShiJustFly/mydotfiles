function history()
    vim.cmd [[packadd! undotree]]
    vim.cmd [[packadd! vim-janah]]
    vim.cmd [[packadd! vim-lastplace]]
    vim.cmd [[packadd! vim-misc]]
    vim.cmd [[packadd! vim-session]]
    vim.cmd[[
        "设置undotree
        if has("persistent_undo")
            set undofile
            set undodir=/Users/shiyaoliang/.config/nvim/plugged/undotree/.undodir
        endif
        let g:undotree_SetFocusWhenToggle = 1
        nnoremap <leader>un :<c-u>UndotreeToggle<cr>
        "let g:undotree_WindowLayout = 1
        "设置vim-session
        let g:session_autosave = 'yes'
        let g:session_autoload = 'no'
    ]]
end
history()
