function visualmulti()
    vim.cmd [[packadd! vim-visual-multi]]
    vim.cmd[[
        "设置vim-visual-multi
        let g:VM_default_mappings = 0
        let g:VM_maps = {}
        let g:VM_maps['Find Under']         = '<m-n>'   " replace c-n
        let g:VM_maps['Find Subword Under'] = '<m-h>'   " replace visual c-n
        let g:VM_maps["Add Cursor Down"]    = '<m-j>'   " new cursor down
        let g:VM_maps["Add Cursor Up"]      = '<m-k>'   " new cursor up
        "let g:VM_maps["Toggle Mappings"]    = '<cr>'    " toggle VM buffer mappings
        "let g:VM_maps["Exit"]               = '<Space>' " quit VM
        let g:VM_silent_exit = 1
    ]]
end
visualmulti()
