function vim_mode_table()
    vim.cmd [[packadd vim-table-mode]]
    vim.cmd [[
        "设置table_mode
        let g:table_mode_corner='|'
    ]]
end
vim_mode_table()
