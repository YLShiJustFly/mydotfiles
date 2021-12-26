function jumpbetweencandh()
    vim.cmd [[packadd! vim-fswitch]]
    vim.cmd[[
        "设置fswitch
        nmap <silent> <c-d> :FSHere<cr>
    ]]
end
jumpbetweencandh()
