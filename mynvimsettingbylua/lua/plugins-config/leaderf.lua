function leaderf()
    vim.cmd [[packadd! LeaderF]]
    vim.cmd[[
        "设置leaderf
        "let g:Lf_Gtagsconf = '/usr/local/share/gtags/gtags.conf'
        let g:Lf_GtagsAutoGenerate = 1
        "let g:Lf_Gtagslabel = 'native-pygments'
        "文件搜索
        let g:Lf_ShortcutF = '<m-p>'
        let g:Lf_ShortcutB = '<m-n>'
        "函数搜索
        noremap <leader>fn :LeaderfFunction!<cr>
        noremap <leader>fm :LeaderfMru<cr>
        noremap <leader>fb :LeaderfBuffer<cr>
        noremap <leader>ft :LeaderfTag<cr>
        noremap <leader>ff :LeaderfFile<cr>
        let g:Lf_RootMarkers = ['.root']
        let g:Lf_WorkingDirectoryMode = 'Ac'
        let g:Lf_WindowHeight = 0.50
        let g:Lf_CacheDirectory = expand('~/.cache/Leaderf')
        let g:Lf_ShowRelativePath = 0
        let g:Lf_StlColorscheme = 'powerline'
        "don't show the help in normal mode
        let g:Lf_HideHelp = 1
        let g:Lf_UseCache = 0
        let g:Lf_UseVersionControlTool = 0
        let g:Lf_IgnoreCurrentBufferName = 1
        "popup mode
        let g:Lf_WindowPosition = 'popup'
        let g:Lf_PreviewInPopup = 1
        let g:Lf_StlSeparator = {'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline"}
        let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
        let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0}
    ]]
end
leaderf()
