function vimwiki()
    vim.cmd [[packadd! vimwiki]]
    vim.cmd [[
        "设置vimwiki
        let g:vimwiki_menu = ''         "不在菜单栏上显示Vimwiki
        let g:vimwiki_use_mouse = 1     "使用鼠标
        let g:vimwiki_list=[{'path': expand('~/.config/nvimwiki'),
         \ 'path_html': expand('~/.config/.vimwiki/html'),
         \ 'syntax': 'markdown', 
         \ 'auto_export': 0,
         \ 'html_header': expand('~/.config/.vimwiki/html/header.tpl'),
         \ 'html_footer': expand('~/.config/.vimwiki/html/footer.tpl'),
         \ 'css_name': 'styles/base.css',
         \ 'diary_link_count': 8,
         \ 'diary_index': 'index'}]
        let g:vimwiki_global_ext=0
        let g:vimwiki_camel_case = 0
        "是否在计算字串长度时用特别考虑中文字符
        let g:vimwiki_CJK_length = 1
    ]]
end
vimwiki()
