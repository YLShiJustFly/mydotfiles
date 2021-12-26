        --let g:airline_filetype_overrides={
            --\ 'coc-explorer':  [ 'CoC Explorer', '' ],
            --\ 'defx':  ['defx', '%{b:defx.paths[0]}'],
            --\ 'fugitive': ['fugitive', '%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'],
            --\ 'gundo': [ 'Gundo', '' ],
            --\ 'help':  [ 'Help', '%f' ],
            --\ 'minibufexpl': [ 'MiniBufExplorer', '' ],
            --\ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
            --\ 'startify': [ 'startify', '' ],
            --\ 'vim-plug': [ 'Plugins', '' ],
            --\ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],
            --\ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
            --\ 'vaffle' : [ 'Vaffle', '%{b:vaffle.dir}' ],
            --\ }

function airline()
    vim.cmd [[packadd! vim-airline]]
    vim.cmd [[packadd! vim-airline-themes]]
    vim.cmd [[
        "设置airline
        "映射切换buffer的键位
        nnoremap <c-c> :Bdelete!<cr>
        if !exists('g:airline_symbols')
            let g:airline_symbols = {}
        endif
        let g:airline_theme='papercolor'
        "使用powerline打过补丁的字体
        "let g:airline_powerline_fonts = 1
        let g:airline#extensions#nvimlsp#enabled = 1
        "let g:airline#extensions#nvimlsp#error_symbol = '✗'
        "let g:airline#extensions#nvimlsp#warning_symbol = '⚡'
        "let g:airline_left_sep = '▶'
        let g:airline_left_alt_sep = ''
        let g:airline_right_sep = ''
        "let g:airline_right_alt_sep = '❮'
        "let g:airline_symbols.lienr = '¶'
        "let g:airline_symbols.branch = '⎇'
        let g:airline_section_b = '%{strftime("%m/%d/%y - %H:%M")}'
        let g:airline#extensions#whitespace#enabled = 0
        let g:airline#extensions#whitespace#symbol = '!'
        let g:airline_stl_path_style = 'short'
        "开启tabline
        let g:airline#extensions#tabline#enabled = 1
        "tabline中当前buffer两端的分隔字符
        "let g:airline#extensions#tabline#left_sep = '▶'
        "let g:airline#extensions#tabline#right_sep = '◀'
        "tabline中未激活buffer两端的分隔字符
        "let g:airline#extensions#tabline#left_alt_sep = '|❯'
        "let g:airline#extensions#tabline#right_alt_sep = '|❮'
        "tabline中buffer显示编号
        let g:airline#extensions#tabline#buffer_nr_show = 1
        let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
        let g:airline#extensions#tabline#show_tab_count = 1
        let g:airline#extensions#tabline#keymap_ignored_filetypes = ['nerdtree', 'dashboard-nvim']
        let g:airline#extensions#tabline#fnamecollapse = 1
        let g:airline#extensions#tabline#fnamemod = ':t'
        let g:airline#extensions#tabline#buffer_idx_mode = 1
        let g:airline#extensions#capslock#symbol = 'CAPS'
        let g:airline#extensions#coc#enabled = 1
        let g:airline#extensions#coc#warning_symbol = '⚡'
        let g:airline#extensions#coc#error_symbol = '✗'
        nmap <localleader>a <Plug>AirlineSelectTab1
        nmap <localleader>s <Plug>AirlineSelectTab2
        nmap <localleader>d <Plug>AirlineSelectTab3
        nmap <localleader>f <Plug>AirlineSelectTab4
        nmap <localleader>g <Plug>AirlineSelectTab5
        nmap <localleader>h <Plug>AirlineSelectTab6
        nmap <localleader>j <Plug>AirlineSelectTab7
        nmap <localleader>k <Plug>AirlineSelectTab8
        nmap <localleader>l <Plug>AirlineSelectTab9
        nmap <c-p> <Plug>AirlineSelectPrevTab
        nmap <c-n> <Plug>AirlineSelectNextTab
        nmap <localleader>tt <Plug>XTablineReopen ReopenLastTab
    ]]
end
airline()
