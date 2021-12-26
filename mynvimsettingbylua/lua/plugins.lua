  -- Only required if you have packer in your `opt` pack
  vim.cmd [[packadd! packer.nvim]]
   return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    use 'kana/vim-textobj-user'
    use 'kana/vim-textobj-indent'
    use 'kana/vim-textobj-syntax'
    use 'kana/vim-textobj-line'
    use 'kana/vim-textobj-entire'
    use 'sgur/vim-textobj-parameter'
    use 'glts/vim-textobj-comment'
    use 'Julian/vim-textobj-brace'
    use 'tpope/vim-unimpaired'
    use 'tpope/vim-surround'
    use 'dkprice/vim-easygrep'
    use 'preservim/nerdcommenter'
    use 'tpope/vim-repeat'
    use 'tpope/vim-rsi'
    use 'jiangmiao/auto-pairs'
    use 'easymotion/vim-easymotion'
    use 'rhysd/clever-f.vim'
    use 'tommcdo/vim-exchange'
    use 'terryma/vim-expand-region'
    use 'psliwka/vim-smoothie'
    use 'rhysd/accelerated-jk'
    use 'ryanoasis/vim-devicons'
    use 'bling/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'machakann/vim-highlightedyank'
    use 'mbbill/undotree'
    use 'kshenoy/vim-signature'
    use 'liuchengxu/vim-clap'
    use 'mhinz/vim-janah'
    use 'farmergreg/vim-lastplace'
    use 'xolox/vim-misc'
    use 'xolox/vim-session'
    use 'skywind3000/vim-terminal-help'
    use 'skywind3000/asyncrun.vim'
    use 'skywind3000/asynctasks.vim'
    use 'airblade/vim-rooter'
    use 'mileszs/ack.vim'
    use 'rking/ag.vim'
    use 'dyng/ctrlsf.vim'
    use 'jeetsukumaran/vim-buffergator'
    use 'ConradIrwin/vim-bracketed-paste'
    use 'derekwyatt/vim-fswitch'
    use 'honza/vim-snippets'
    use 'SirVer/ultisnips'
    use 'stsewd/tree-sitter-comment'
    use 'kevinhwang91/nvim-bqf'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'tree-sitter/tree-sitter-cpp'
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-treesitter/playground'
    use 'p00f/nvim-ts-rainbow'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'ludovicchabant/vim-gutentags'
    use 'skywind3000/gutentags_plus'
    use 'altercation/vim-colors-solarized'
    use 'DanilaMihailov/beacon.nvim'
    use 'justinmk/vim-dirvish'
    use {'Yggdroot/LeaderF', run = ':LeaderfInstallCExtension'}
    use 'preservim/tagbar'
    use 'mhinz/vim-signify'
    use 'tpope/vim-fugitive'
    use 'moll/vim-bbye'
    use 'will133/vim-dirdiff'
    use 'aymericbeaumet/vim-symlink'
    use 'mg979/vim-visual-multi'
    use 'liuchengxu/vim-which-key'
    use {'puremourning/vimspector',
            setup = [[vim.g.vimspector_enable_mappings = 'VISUAL_STUDIO']],
        }
    use 'lewis6991/impatient.nvim'
    --日历和笔记
    use 'vimwiki/vimwiki'
    use 'mattn/calendar-vim'
    --markdown相关
    use 'godlygeek/tabular'
    use 'tpope/vim-markdown'
    use 'iamcco/mathjax-support-for-mkdp'
    use 'iamcco/markdown-preview.nvim'
    use 'ferrine/md-img-paste.vim'
    use 'mzlogin/vim-markdown-toc'
    use 'jszakmeister/markdown2ctags'
    use 'joker1007/vim-markdown-quote-syntax'
    --PlantUML相关
    use 'aklt/plantuml-syntax'
    use 'tyru/open-browser.vim'
    use 'weirongxu/plantuml-previewer.vim'
    --翻译
    use 'ianva/vim-youdao-translater'
    --切换中文输入法
    use 'CodeFalling/fcitx-vim-osx'
    use 'kyazdani42/nvim-web-devicons'
    --表格
    use 'dhruvasagar/vim-table-mode'
    --缩进线
    use 'Yggdroot/indentLine'
    use 'glepnir/dashboard-nvim'
    use 'lervag/vimtex'
    use 'Shougo/defx.nvim'
    use 'kristijanhusak/defx-icons'
    use 'kristijanhusak/defx-git'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'tzachar/cmp-tabnine'
    use 'williamboman/nvim-lsp-installer'

    --use {'neoclide/coc.nvim', branch = "master", run = 'cd app && yarn install --frozen-lockfile'}
    --use 'nvim-lua/plenary.nvim'
    --use 'Shatur/neovim-session-manager'
    --use {'nvim-telescope/telescope.nvim',
            --requires = {
                --{'nvim-lua/plenary.nvim'}
            --}
        --}

    -- Lua
    use {
      "ahmedkhalf/project.nvim",
      config = function()
        require("project_nvim").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }


    --use 'goolord/alpha-nvim'
    ----自动对齐代码
    --use 'google/vim-maktaba'
    --use 'google/vim-codefmt'
    --use 'google/vim-glaive'
    --use 'L3MON4D3/LuaSnip'
    --use 'hrsh7th/vim-vsnip'
    --use 'hrsh7th/vim-vsnip-integ'
    ----函数原型提醒
    --use 'Shougo/echodoc.vim'
    ----目录树图标
    --use 'ryanoasis/vim-devicons'
    --use 'junegunn/fzf'
    --use 'justinmk/vim-syntax-extra'
    ----java文本增强
    --use 'uiiaoo/java-syntax.vim'
    ----java编译运行
    --use 'wsdjeg/JavaUnit.vim'
    ----java测试文件跳转
    --use 'keitokuch/vim-junit-jump'
    ----java生成单元测试文件
    --use 'Chris-Slade/vim-makeunit'
    ----python错误检测
    --use 'nvie/vim-flake8'
    ----python缩进
    --use 'Vimjas/vim-python-pep8-indent'
    ----python自动格式化
    --use 'tell-k/vim-autopep8'
    ----彩虹括号
    --use 'luochen1990/rainbow'
    ----根据类定义自动生成函数框架
    --use 'derekwyatt/vim-protodef'
    ----语法检测
    --use 'dense-analysis/ale'
    --use 'regen100/cmake-language-server'
    --use 'junegunn/fzf'
    --use 'junegunn/fzf.vim'
    ----For vsnip users.
    --use 'hrsh7th/cmp-vsnip'
    --use 'hrsh7th/vim-vsnip'
    --use 'neovim/nvim-lspconfig'
    --use 'ojroques/nvim-lspfuzzy'
    --use 'glepnir/lspsaga.nvim'
    --use 'hrsh7th/nvim-compe'
    --use 'williamboman/nvim-lsp-installer'
    ----语法高亮
    --use 'scrooloose/syntastic'

end)
