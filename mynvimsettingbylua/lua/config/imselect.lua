function imselect()
    vim.cmd [[packadd! vim-im-select]]
    vim.cmd [[
        let g:im_select_default = 'com.apple.keylayout.US'
    ]]
end
imselect()
