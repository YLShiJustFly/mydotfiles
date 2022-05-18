    --vim.cmd [[packadd! tabular]]
        --"设置默认储存文件夹.这里表示储存在当前文档所在文件夹下的'pic'文件夹下,相当于 ./pic/
        --let g:mdip_imgdir = '.' 
        --"设置默认图片名称.当图片名称没有给出时,使用默认图片名称
        --let g:mdip_imgname = ''
function markdown()
    vim.cmd [[packadd! vim-markdown]]
    vim.cmd [[packadd! mathjax-support-for-mkdp]]
    vim.cmd [[packadd! markdown-preview.nvim]]
    --vim.cmd [[packadd! md-img-paste.vim]]
    vim.cmd [[packadd! vim-markdown-toc]]
    vim.cmd [[packadd! markdown2ctags]]
    vim.cmd [[packadd! vim-markdown-quote-syntax]]
    vim.cmd [[
        "markdown配置
        let g:vim_markdown_no_default_key_mappings = 1
        let g:vim_markdown_folding_disabled=1
        let g:vim_markdown_conceal=0
        let g:vim_markdown_math = 1
        let g:vim_markdown_frontmatter = 1
        let g:vim_markdown_fenced_languages = ['csharp=cs']
        let g:vim_markdown_toc_autofit = 1
        let g:mkdp_path_to_chrome = "open -a google\\ chrome"
        let g:mkdp_markdown_css=''
        let g:mkdp_highlight_css=expand('~/.config/nvim/plugged/markdown-preview.nvim/highlight.js/src/styles/solarized-dark.css')
        let g:mkdp_auto_close=1
        let g:mkdp_echo_preview_url = 1
        let g:vmt_auto_update_on_save = 0
        let g:markdown_minlines = 100
        autocmd bufnewfile,bufreadpost *.md set filetype=markdown
        autocmd BufNewFile,BufReadPost *.wiki set filetype=markdown
        autocmd filetype markdown nnoremap <leader>ma :<c-u>MarkdownPreview<cr>
        autocmd filetype markdown nnoremap <leader>sm :<c-u>MarkdownPreviewStop<cr>
        "设置快捷键
        autocmd FileType markdown nmap <buffer><silent> <leader>mc :call mdip#MarkdownClipboardImage()<CR>
    ]]
end
markdown()
