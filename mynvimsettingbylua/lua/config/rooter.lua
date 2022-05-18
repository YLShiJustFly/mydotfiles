function rooter()
    vim.cmd [[packadd! vim-rooter]]
    vim.cmd[[
        "设置vim-rooter
        let g:rooter_patterns = ['.git', 'compile_commands.json']
        let g:rooter_change_directory_for_non_project_files = 'current'
        let g:rooter_manual_only = 0
    ]]
end
rooter()
