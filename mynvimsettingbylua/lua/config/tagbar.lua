function tagbar()
    vim.cmd [[packadd! tagbar]]
    vim.cmd[[
        "设置tagbar
        let g:tagbar_ctags_bin = '/usr/bin/ctags'  
        let g:tagbar_right = 1
        let g:tagbar_autoclose = 1
        let g:tagbar_autofocus = 1
        let g:tagbar_iconchars = ['▶', '▼']
        nnoremap <silent> <leader>tb :TagbarToggle<cr>

        let g:tagbar_type_markdown = {  'ctagstype': 'markdown',  'ctagsbin' : expand('~/.config/nvim/plugged/markdown2ctags/markdown2ctags.py'),  'ctagsargs' : '-f - --sort=yes ',  'kinds' : [  's:sections',  'i:images'  ],  'sro' : '|',  'kind2scope' : {  's' : 'section',  },  'sort': 0,  }

        "let g:tagbar_sort = 1
    ]]
end
tagbar()
