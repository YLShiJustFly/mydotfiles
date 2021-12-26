function snippets()
    vim.cmd [[packadd! vim-snippets]]
    vim.cmd [[packadd! ultisnips]]
    vim.cmd [[
        "Ultisnip设置
        let g:UltiSnipsSnippetDirectories=["UltiSnips"]
        let g:UltiSnipsExpandTrigger="<TAB>"
        let g:UltiSnipsJumpForwardTrigger="<c-n>"
        let g:UltiSnipsJumpBackwardTrigger="<c-p>"
        let g:UltiSnipsEditSplit="vertical"
    ]]
end
snippets()
