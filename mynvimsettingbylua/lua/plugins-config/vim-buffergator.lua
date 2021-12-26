function buffergator()
    vim.cmd [[packadd! vim-buffergator]]
    vim.cmd[[

        "设置vim-buffergator
        let g:buffergator_viewport_split_policy = "B"
        let g:buffergator_mru_cycle_loop = 1
        nnoremap <c-e> :<c-u>nohlsearch<cr>:<c-u>cclose<cr>:<c-u>BuffergatorOpen<cr>
        nnoremap <c-q> :<c-u>nohlsearch<cr>:<c-u>cclose<cr>:<c-u>BuffergatorClose<cr>
    ]]
end
buffergator()
