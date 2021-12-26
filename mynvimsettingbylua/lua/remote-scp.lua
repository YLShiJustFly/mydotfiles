function scp()
    vim.cmd[[
        "设置编译和自动保存文件
        let scopycmd=expand('~/develop/sendfiletoremote/sendfile.sh')
        let buildcmd=expand('~/develop/connecttoremote/gotobuild.sh')
        let shouldidocopy = 1
        nnoremap <leader>sc :let shouldidocopy = 1<cr>
        nnoremap <leader>nc :let shouldidocopy = 0<cr>
        "nnoremap <leader>bu :call DoBuild()<cr>
        "回调函数
        func! DoCallback(channel, msg)
            echom a:msg
        endfunc
        function! DoSCopy()
            let localfile=expand('%:p')
            let localfile_other=expand('#:p')
            let index_in_localfile = match(localfile, expand('~/develop/local/code/b.ebs'))
            if !empty(localfile) && g:shouldidocopy == 1 
                if index_in_localfile != -1
        	        if has('nvim')
                        let job_localfile = jobstart(['/bin/bash', '-c', g:scopycmd." ".localfile], {'callback': 'DoCallback'})
                   else
                        let job_localfile = job_start(['/bin/bash', '-c', g:scopycmd." ".localfile], {'callback': 'DoCallback'})
                    endif
                endif
            else
            endif
            if !empty(localfile_other) && g:shouldidocopy == 1 
                let index_in_localfile_other = match(localfile_other, expand('~/develop/local/code/b.ebs'))
                if index_in_localfile_other != -1
        	        if has('nvim')
                        let job_localfile_other = jobstart(['/bin/bash', '-c', g:scopycmd." ".localfile_other], {'callback': 'DoCallback'})
                    else
                        let job_localfile_other = job_start(['/bin/bash', '-c', g:scopycmd." ".localfile_other], {'callback': 'DoCallback'})
                    endif
                endif
            endif
        endfunction
        augroup scopytoremote
            autocmd!
                autocmd BufWritePost *.c call DoSCopy()
                autocmd BufWritePost *.cpp call DoSCopy()
                "autocmd BufWritePost *.java call DoSCopy()
                "autocmd BufWritePost *.iml call DoSCopy()
                "autocmd BufWritePost *.xml call DoSCopy()
                autocmd BufWritePost *.h call DoSCopy()
                "autocmd BufWritePost *.y call DoSCopy()
                autocmd BufWritePost Makefile call DoSCopy()
                "autocmd BufWritePost .md call DoSCopy()
                "autocmd BufWritePost README call DoSCopy()
        augroup END
 
    ]]
end
scp()
