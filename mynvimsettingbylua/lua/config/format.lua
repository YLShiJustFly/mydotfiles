function format()
    vim.cmd [[packadd! vim-maktaba]]
    vim.cmd [[packadd! vim-codefmt]]
    vim.cmd [[packadd! vim-glaive]]

    vim.cmd[[
        "设置格式化代码格式
        augroup autoformat_settings
          autocmd FileType bzl AutoFormatBuffer buildifier
          autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
          autocmd FileType javascript,arduino AutoFormatBuffer clang-format
          autocmd FileType dart AutoFormatBuffer dartfmt
          autocmd FileType go AutoFormatBuffer gofmt
          autocmd FileType gn AutoFormatBuffer gn
          autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
          autocmd FileType java AutoFormatBuffer clang-format
          autocmd FileType python AutoFormatBuffer ypf
          autocmd FileType python AutoFormatBuffer autopep8
          autocmd FileType rust AutoFormatBuffer rustfmt
          autocmd FileType vue AutoFormatBuffer prettier
        augroup END
        map <leader>mi :<c-u>Glaive codefmt clang_format_style=Microsoft<cr>
        map <leader>ch :<c-u>Glaive codefmt clang_format_style=Chromium<cr>
        map <leader>mo :<c-u>Glaive codefmt clang_format_style=Mozilla<cr>
        map <leader>we :<c-u>Glaive codefmt clang_format_style=WebKit<cr>
        map <leader>fi :<c-u>Glaive codefmt clang_format_style=file<cr>
        map <leader>ll :<c-u>Glaive codefmt clang_format_style=LLVM<cr>
        map <leader>go :<c-u>Glaive codefmt clang_format_style=Google<cr>
        map <leader>gn :<c-u>Glaive codefmt clang_format_style=GNU<cr>
    ]]
end
format()
