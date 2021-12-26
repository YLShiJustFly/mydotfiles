        --"设置beacon
        --augroup load_beacon
            --autocmd!
            --autocmd InsertEnter * call plug#load('beacon.nvim') | autocmd! load_beacon
        --augroup END

function beacon()
    vim.cmd [[packadd! beacon.nvim]]
    vim.cmd [[
    ]]
end
beacon()
