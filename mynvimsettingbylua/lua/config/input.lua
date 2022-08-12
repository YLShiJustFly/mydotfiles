function input()
    vim.cmd [[packadd! sshim.vim]]
    vim.cmd [[
        let g:sshim_url = 'http://localhost:8088'
        let g:sshim_disable = 0
    ]]
end
input()
