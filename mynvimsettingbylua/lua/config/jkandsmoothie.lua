function jkandsmoothie()
    vim.cmd [[packadd! accelerated-jk]]
    vim.cmd [[packadd! vim-smoothie]]
    vim.cmd[[
        "设置accelerated-jk
        nmap j <Plug>(accelerated_jk_gj)
        nmap k <Plug>(accelerated_jk_gk)
        let g:accelerated_jk_acceleration_limit=100
        "设置vim-smoothie
        let g:smoothie_enabled = 1
    ]]
end
jkandsmoothie()
