function dirdiff()
    vim.cmd [[packadd! vim-dirdiff]]
    vim.cmd[[
        "设置dirdiff
        let g:DirDiffExcludes = "*.git,CVS,*.class,*.exe,.*.swp"
    ]]
end
dirdiff()
