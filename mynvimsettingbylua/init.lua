local load_core = function()
    --Packer插件管理
    require('plugins')
    --基础设置
    require('genaralmapping')
    --Packer插件配置
    require('plugins-config')
    require('remote-scp')

    vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
    vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
    vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
    vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
    vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]
end

load_core()
