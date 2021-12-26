function signify()
    vim.cmd [[packadd! vim-signify]]
    vim.cmd[[
        "signify设置
        let g:signify_priority = 10
        nmap [g <plug>(signify-prev-hunk)
        nmap ]g <plug>(signify-next-hunk)
    ]]
end
signify()
