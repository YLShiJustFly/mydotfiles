function ci()
    vim.cmd [[packadd! coc.nvim]]
    vim.cmd [[
        nmap <silent> w <Plug>(coc-ci-w)
        nmap <silent> b <Plug>(coc-ci-b)
    ]]
end
ci()
