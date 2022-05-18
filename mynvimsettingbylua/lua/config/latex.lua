function latex()
    vim.cmd [[packadd! vimtex]]
    vim.cmd [[
        let maplocalleader = " "
        autocmd Filetype tex setl updatetime=1
        let g:vimtex_quickfix_mode = 0
        function! s:write_server_name() abort
            let nvim_server_file = (has('win32') ? $TEMP : '/tmp') . '/vimtexserver.txt'
            call writefile([v:servername], nvim_server_file)
        endfunction
        augroup vimtex_common
            autocmd!
            autocmd FileType tex call s:write_server_name()
            autocmd FileType tex nmap <buffer> <localleader>lc <plug>(vimtex-compile)
            autocmd FileType tex nmap <buffer> <localleader>ln <plug>(vimtex-view)
        augroup END
        let g:vimtex_compiler_method = 'latexmk'
        let g:vimtex_compiler_latexmk = {
            \ 'options' : [
            \   '-xelatex',
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \ 'build_dir' : 'build',
            \ }
        " TOC settings
        let g:vimtex_toc_config = {
            \ 'name' : 'TOC',
            \ 'layers' : ['content', 'todo', 'include'],
            \ 'resize' : 1,
            \ 'split_width' : 30,
            \ 'todo_sorted' : 0,
            \ 'show_help' : 1,
            \ 'show_numbers' : 1,
            \ 'mode' : 2,
            \ }
        let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
        let g:vimtex_view_general_options = '-g -r @line @pdf @tex'
        augroup vimtex_mac
            autocmd!
            autocmd User VimtexEventCompileSuccess call UpdateSkim()
        augroup END
        function! UpdateSkim() abort
            let l:out = b:vimtex.out()
            let l:src_file_path = expand('%:p')
            let l:cmd = [g:vimtex_view_general_viewer, '-r']
            if !empty(system('pgrep Skim'))
                call extend(l:cmd, ['-g'])
              endif
            call jobstart(l:cmd + [line('.'), l:out, l:src_file_path])
        endfunction
    ]]
end
latex()
