        --nnoremap <leader>n :CocCommand explorer<cr>
function coc()
    vim.cmd [[packadd! coc.nvim]]
    vim.cmd [[
        "coc.nvim设置
        highlight link CocErrorSign DarkGray
        highlight link CocWarningSign DarkGray
        highlight link CocInfoSign DarkGray
        highlight link CocHintSign DarkGray
        highlight link CocErrorVirtualText DarkGray
        highlight link CocWarningVirtualText DarkGray
        highlight link CocInfoVirtualText DarkGray
        highlight link CocHintVirtualText DarkGray
        "highlight link CocErrorHighlight DarkGray
        "highlight link CocWarningHighlight DarkGray
        "highlight link CocInfoHighlight DarkGray
        "highlight link CocHintHighlight DarkGray
        "highlight link CocErrorLine DarkGray
        "highlight link CocWarningLine DarkGray
        "highlight link CocInfoLine DarkGray
        "highlight link CocHintLine DarkGray
        function! s:check_back_space() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction
        nnoremap <silent> K :call <SID>show_documentation()<cr>
        function! s:show_documentation()
          if index(['vim', 'help'], &filetype) >= 0
            execute 'help ' . expand('<cword>')
          elseif &filetype ==# 'tex'
            VimtexDocPackage
          elseif (coc#rpc#ready())
            call CocAction('doHover')
          else
            execute '!' . &keywordprg . "". expand('<cword>')
          endif
        endfunction
        nnoremap <F5> :CocCommand java.debug.vimspector.start<cr>
        nnoremap <F6> :VimspectorReset<cr>
        nnoremap <leader>cde :call coc#config('diagnostic.enable', v:true)<cr>
        nnoremap <leader>cdd :call coc#config('diagnostic.enable', v:false)<cr>
        nnoremap <leader>cae :call coc#config('diagnostic.displayByAle', v:true)<cr>
        nnoremap <leader>cad :call coc#config('diagnostic.displayByAle', v:false)<cr>
        "Symbol renaming.
        nmap <leader>rn <Plug>(coc-rename)
        nmap <leader>rf <Plug>(coc-refactor)
        inoremap <silent><expr> <c-n> pumvisible() ? "\<c-n>":
              \ <SID>check_back_space() ? "\<tab>":
              \ coc#refresh()
        inoremap <silent><expr> <c-p> pumvisible() ? "\<c-p>":
              \ <SID>check_back_space() ? "\<tab>":
              \ coc#refresh()
        "Make <cr> auto-select the first completion item and notify coc.nvim to
        "format on enter, <cr> could be remapped by other vim plugin
        inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                      \: "\<c-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"
        "Use `[g` and `]g` to navigate diagnostics
        "Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
        nmap <silent> [a <Plug>(coc-diagnostic-prev)
        nmap <silent> ]a <Plug>(coc-diagnostic-next)
        "GoTo code navigation.
        "nmap <silent> fj <Plug>(coc-definition)
        "nmap <silent> <c-]> <Plug>(coc-definition)
        "nmap <silent> <c-j> <Plug>(coc-implementation)
        "nmap <silent> <c-s> <Plug>(coc-references-used)
        "nmap <silent> <c-\> <Plug>(coc-declaration)
        "nmap <silent> <c-m> <Plug>(coc-type-definition)
        "nmap <silent> <c-y> <Plug>(coc-implementation)
        "Use K to show documentation in preview window.
        "Highlight the symbol and its references when holding the cursor.
        autocmd CursorHold *.c *.cpp *.h *.java *.xml silent call CocActionAsync('highlight')
        "Formatting selected code.
        xmap <leader>f  <Plug>(coc-format-selected)
        nmap <leader>f  <Plug>(coc-format-selected)
        augroup mygroup
          autocmd!
          ""Setup formatexpr specified filetype(s).
          autocmd FileType cpp,typescript,json,java setl formatexpr=CocAction('formatSelected')
          ""Update signature help on jump placeholder.
          autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
        augroup end
        "Applying codeAction to the selected region.
        "Example: `<leader>aap` for current paragraph
        xmap <leader>da <Plug>(coc-codeaction-selected)
        nmap <leader>da <Plug>(coc-codeaction-selected)
        "Remap keys for applying codeAction to the current buffer.
        nmap <leader>dm <Plug>(coc-codeaction)
        "Apply AutoFix to problem on the current line.
        nmap <leader>q <Plug>(coc-fix-current)
        "Remap <c-f> and <c-b> for scroll float windows/popups.
        if has('nvim') || has('patch-8.2.0750')
          nnoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-f>"
          nnoremap <silent><nowait><expr> <c-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-b>"
          inoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>": "\<Right>"
          inoremap <silent><nowait><expr> <c-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>": "\<Left>"
          vnoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-f>"
          vnoremap <silent><nowait><expr> <c-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-b>"
        endif
        ""Use CTRL-S for selections ranges.
        ""Requires 'textDocument/selectionRange' support of language server.
        "nmap <silent> <c-q> <Plug>(coc-range-select)
        "xmap <silent> <c-q> <Plug>(coc-range-select)
        "Add `:Format` command to format current buffer.
        command! -nargs=0 Format :call CocAction('format')
        "Add `:Fold` command to fold current buffer.
        command! -nargs=? Fold :call CocAction('fold', <f-args>)
        "Add `:OR` command for organize imports of the current buffer.
        command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')
        "Add (Neo)Vim's native statusline support.
        "NOTE: Please see `:h coc-status` for integrations with external plugins that
        "provide custom statusline: lightline.vim, vim-airline.
        "set statusline^=%{StatusDiagnostic()}%{coc#status()}%{get(b:,'coc_current_function','')}
        "Mappings for CoCList
        "Show all diagnostics.
        nnoremap <silent><nowait> <leader>cld :<c-u>CocList diagnostics<cr>
        "Manage extensions.
        nnoremap <silent><nowait> <leader>cle :<c-u>CocList extensions<cr>
        "Show commands.
        nnoremap <silent><nowait> <leader>clc :<c-u>CocList commands<cr>
        "Find symbol of current document.
        nnoremap <silent><nowait> <leader>clo :<c-u>CocList outline<cr>
        "Search workspace symbols.
        "nnoremap <silent><nowait> <leader>cls :<c-u>CocList -I symbols<cr>
        "Do default action for next item.
        nnoremap <silent><nowait> <leader>cn :<c-u>CocNext<cr>
        "Do default action for previous item.
        nnoremap <silent><nowait> <leader>cu :<c-u>CocPrev<cr>
        "Resume latest coc list.
        nnoremap <silent><nowait> <leader>clr :<c-u>CocListResume<cr>
        "搜索函数
        nnoremap <silent><nowait> <leader>cf :<c-u>CocList -I symbols<cr>  
        "Map function and class text objects
        "NOTE: Requires 'textDocument.documentSymbol' support from the language server.
        xmap if <Plug>(coc-funcobj-i)
        omap if <Plug>(coc-funcobj-i)
        xmap af <Plug>(coc-funcobj-a)
        omap af <Plug>(coc-funcobj-a)
        xmap ia <Plug>(coc-classobj-i)
        omap ia <Plug>(coc-classobj-i)
        xmap aa <Plug>(coc-classobj-a)
        omap aa <Plug>(coc-classobj-a)
    ]]
end
coc()
