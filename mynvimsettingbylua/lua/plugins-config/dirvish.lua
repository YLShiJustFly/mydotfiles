function dirvish()
    vim.cmd [[packadd! vim-dirvish]]
    vim.cmd [[
        "设置dirvish
        function! s:setup_dirvish()
        	if &buftype != 'nofile' && &filetype != 'dirvish'
        		return
        	endif
        	if has('nvim')
        		return
        	endif
        	"取得光标所在行的文（当前选中）
        	let text = getline('.')
        	"if ! get(g:, 'dirvish_hide_visible', 0)
        		"exec 'silent keeppatterns g@\v[\/]\.[^\/]+[\/]?$@d _'
        	"endif
        	"排序文件名
            exec 'sort ,^.*[\/],'
        	"定位到之前光标处的文件
            let name = '^' . escape(text, '.*[]~\') . '[/*|@=|\\*]\=\%($\|\s\+\)'
        	call search(name, 'wc')
        	noremap <silent><buffer> ~ :Dirvish ~<cr>
        	noremap <buffer> % :e %
        endfunc
        augroup MyPluginSetup
        	autocmd!
        	autocmd FileType dirvish call s:setup_dirvish()
        augroup END
        augroup dirvish_config
          autocmd!
          "Map `gh` to hide dot-prefixed files.  Press `R` to "toggle"(reload).
          autocmd FileType dirvish nnoremap <silent><buffer> gh :<c-u>silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:<c-u>setl cole=3<cr>
        augroup END
    ]]
end
dirvish()
