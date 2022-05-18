function calendar()
    vim.cmd [[packadd! calendar.vim]]
    vim.cmd [[
	augroup calendar-mappings
		autocmd!
		" diamond cursor
		autocmd FileType calendar nmap <buffer> h <Plug>(calendar_left)
		autocmd FileType calendar nmap <buffer> j <Plug>(calendar_down)
		autocmd FileType calendar nmap <buffer> k <Plug>(calendar_up)
		autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
		" swap v and V
		" unmap <C-n>, <C-p> for other plugins
		autocmd FileType calendar nunmap <buffer> <C-n>
		autocmd FileType calendar nunmap <buffer> <C-p>
		let g:calendar_task_delete = 1
	augroup END
    ]]
end
calendar()
