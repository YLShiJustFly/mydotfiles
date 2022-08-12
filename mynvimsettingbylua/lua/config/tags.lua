function tags()
    vim.cmd [[packadd! vim-gutentags]]
    vim.cmd [[packadd! gutentags_plus]]
    vim.cmd[[
        "gutentags设置
        "let g:gutentags_trace = 1
        let g:gutentags_define_advanced_commands = 1
        "gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
        let g:gutentags_project_root = ['compile_commands.json']
        "所生成的数据文件的名称
        let g:gutentags_ctags_tagfile = '.tags'
        " 同时开启 ctags 和 gtags 支持：
        let g:gutentags_modules = []
        if executable('ctags')
        	let g:gutentags_modules += ['ctags']
        endif
        if executable('gtags-cscope') && executable('gtags')
        	let g:gutentags_modules += ['gtags_cscope']
        endif
        " 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
        let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
        let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
        let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
        "" 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
        "let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
        " 禁用 gutentags 自动加载 gtags 数据库的行为
        let g:gutentags_auto_add_gtags_cscope = 0
        let $GTAGSLABEL = 'native-pygments'
        let g:gutentags_cache_dir = expand('~/.cache/tags')
        " change focus to quickfix window after search (optional).
        let g:gutentags_plus_switch = 1
        let g:gutentags_plus_nomap = 1
        let g:gutentags_exclude_filetypes = ['.json']
        noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
        noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
        noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
        noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
        noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
        noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
        noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
        noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
        noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>
        noremap <silent> <leader>gz :GscopeFind z <C-R><C-W><cr>
    ]]
end
tags()
