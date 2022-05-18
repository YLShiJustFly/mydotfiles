function jumpbetweencandh()
    vim.cmd [[packadd! vim-fswitch]]
    vim.cmd[[
        "设置fswitch
        nmap <silent> <c-e> :FSHere<cr>
    ]]
end
jumpbetweencandh()
