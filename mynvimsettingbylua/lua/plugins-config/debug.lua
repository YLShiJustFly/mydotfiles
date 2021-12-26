function debug()
    vim.cmd [[packadd! vimspector]]
    vim.cmd[[
        let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
    ]]
end
debug()
