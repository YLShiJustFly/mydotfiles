--let g:livepreview_engine = 'pdflatex'
function latex()
    vim.cmd [[packadd! vimtex]]
    vim.cmd [[
        let g:vimtex_compiler_method = 'latexmk'
        let g:vimtex_compiler_latexmk = {
        \ 'options' : [
        \   '-xelatex',
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
        let g:vimtex_view_method = 'skim'
        let maplocalleader = " "
        autocmd Filetype tex setl updatetime=1
        let g:vimtex_quickfix_mode = 0
    ]]
end
latex()
