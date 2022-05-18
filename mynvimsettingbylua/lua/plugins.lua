-- Only required if you have packer in your `opt` pack

local plug_url_format = ""
if vim.g.is_linux then
  plug_url_format = "https://hub.fastgit.org/%s"
else
  plug_url_format = "https://github.com/%s"
end
vim.cmd [[packadd! packer.nvim]]

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    use {'kana/vim-textobj-user'}
    use {'kana/vim-textobj-indent'}
    use {'kana/vim-textobj-syntax'}
    use {'kana/vim-textobj-line'}
    use {'kana/vim-textobj-entire'}
    use {'sgur/vim-textobj-parameter'}
    use {'glts/vim-textobj-comment'}
    use {'Julian/vim-textobj-brace'}
    use {'preservim/nerdcommenter'}
    use {'tpope/vim-unimpaired'}
    use {'tpope/vim-surround', event = 'BufEnter'}
    use {'dkprice/vim-easygrep', event = 'BufEnter'}
    use {'tpope/vim-repeat', event = 'BufEnter'}
    use {'tpope/vim-rsi', event = 'BufEnter'}
    use {'easymotion/vim-easymotion', event = 'BufEnter'}
    use {'rhysd/clever-f.vim', event = 'BufEnter'}
    use {'tommcdo/vim-exchange', event = 'BufEnter'}
    use {'terryma/vim-expand-region', event = 'BufEnter'}
    use {'psliwka/vim-smoothie', event = 'BufEnter'}
    use {'rhysd/accelerated-jk', event = 'BufEnter'}

    use 'glepnir/dashboard-nvim'
    use {'machakann/vim-highlightedyank', event = 'BufEnter'}
    use {'mbbill/undotree', event = 'BufEnter'}
    use {'kshenoy/vim-signature', event = 'BufEnter'}
    use {'liuchengxu/vim-clap'}

    use {'mhinz/vim-janah', event = 'VimEnter'}
    use {'farmergreg/vim-lastplace', event = 'VimEnter'}
    use {'xolox/vim-misc', event = 'VimEnter'}
    use {'xolox/vim-session', event = 'VimEnter'}

    use {'skywind3000/vim-terminal-help', event = 'BufEnter'}
    use {'skywind3000/asyncrun.vim', event = 'BufEnter'}
    use {'skywind3000/asynctasks.vim', event = 'BufEnter'}
    use {'airblade/vim-rooter', event = 'BufEnter'}
    use {'mileszs/ack.vim', event = 'BufEnter'}
    use {'rking/ag.vim', event = 'BufEnter'}
    use {'dyng/ctrlsf.vim', event = 'BufEnter'}
    use {'jeetsukumaran/vim-buffergator', event = 'BufEnter'}
    use {'ConradIrwin/vim-bracketed-paste', event = 'BufEnter'}
    use {'Shougo/defx.nvim', event = 'BufEnter'}
    use {'kristijanhusak/defx-icons', event = 'BufEnter'}
    use {'kristijanhusak/defx-git', event = 'BufEnter'}
    use {'derekwyatt/vim-fswitch', event = 'BufEnter'}
    use {'honza/vim-snippets', event = 'BufEnter'}
    use {'SirVer/ultisnips', ft = {'tex'}, event = 'BufEnter'}
    use {'lervag/vimtex', event = 'BufEnter'}
    use {'kevinhwang91/nvim-bqf', event = 'BufEnter'}

    use {'stsewd/tree-sitter-comment'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'tree-sitter/tree-sitter-cpp'}
    use {'nvim-treesitter/nvim-treesitter-refactor'}
    use {'nvim-treesitter/playground'}
    use {'p00f/nvim-ts-rainbow'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}

    use {'ludovicchabant/vim-gutentags', event = 'BufEnter'}
    use {'skywind3000/gutentags_plus', event = 'BufEnter'}
    use 'altercation/vim-colors-solarized'
    use {'DanilaMihailov/beacon.nvim', event = 'BufEnter'}
    use {'justinmk/vim-dirvish', event = 'BufEnter'}

    use {'Yggdroot/LeaderF', run = ':LeaderfInstallCExtension', event = 'BufEnter'}
    use {'preservim/tagbar', event = 'BufEnter'}
    use {'mhinz/vim-signify', event = 'BufEnter'}
    use {'tpope/vim-fugitive', event = 'BufEnter'}
    use {'moll/vim-bbye', event = 'BufEnter'}
    use {'will133/vim-dirdiff', event = 'BufEnter'}
    use {'mg979/vim-visual-multi', event = 'BufEnter'}
    use {'liuchengxu/vim-which-key', event = 'BufEnter'}
    use {'puremourning/vimspector',
            setup = [[vim.g.vimspector_enable_mappings = 'VISUAL_STUDIO']],
            event = 'BufEnter'
    }
    use {'lewis6991/impatient.nvim', event = 'BufEnter'}

    --缩进线
    use {'Yggdroot/indentLine', event = 'BufEnter'}
    use 'dhruvasagar/vim-table-mode'
    --日历和笔记
    use {'vimwiki/vimwiki', event = 'BufEnter'}
    use {'mattn/calendar-vim', event = 'BufEnter'}
    --markdown相关
    use {'godlygeek/tabular', ft = {'md'}, event = 'BufEnter'}
    use {'tpope/vim-markdown', ft = {'md'}, event = 'BufEnter'}
    use {'iamcco/mathjax-support-for-mkdp', ft = {'md'}, event = 'BufEnter'}
    use {'iamcco/markdown-preview.nvim', ft = {'md'}, event = 'BufEnter'}
    use {'ferrine/md-img-paste.vim', ft = {'md'}, event = 'BufEnter'}
    use {'mzlogin/vim-markdown-toc', ft = {'md'}, event = 'BufEnter'}
    use {'jszakmeister/markdown2ctags', ft = {'md'}, event = 'BufEnter'}
    use {'joker1007/vim-markdown-quote-syntax', ft = {'md'}, event = 'BufEnter'}
    --PlantUML相关
    use {'aklt/plantuml-syntax', ft = {'puml'}, event = 'BufEnter'}
    use {'tyru/open-browser.vim', ft = {'puml'}, event = 'BufEnter'}
    use {'weirongxu/plantuml-previewer.vim', ft = {'puml'}, event = 'BufEnter'}
    --翻译
    use {'ianva/vim-youdao-translater', event = 'BufEnter'}
    --切换中文输入法
    use {'CodeFalling/fcitx-vim-osx', event = 'InsertEnter'}

    use {'kyazdani42/nvim-web-devicons', event = 'BufEnter'}
    use {'SmiteshP/nvim-gps'}
    use {'nvim-lualine/lualine.nvim', after = 'nvim-gps'}
    use {'kdheepak/tabline.nvim', after = "lualine.nvim"}
    use {'arkav/lualine-lsp-progress', after = "lualine.nvim"}

    use ({"andymass/vim-matchup", event = "VimEnter"})

    use 'glepnir/dashboard-nvim'
    use {'mbbill/undotree', event = 'BufEnter'}
    use {'kshenoy/vim-signature', event = 'BufEnter'}
    use {'liuchengxu/vim-clap'}

    use {'mhinz/vim-janah', event = 'VimEnter'}
    use {'farmergreg/vim-lastplace', event = 'VimEnter'}
    use {'xolox/vim-misc', event = 'VimEnter'}
    use {'xolox/vim-session', event = 'VimEnter'}

    use {'skywind3000/vim-terminal-help', event = 'BufEnter'}
    use {'skywind3000/asyncrun.vim', event = 'BufEnter'}
    use {'skywind3000/asynctasks.vim', event = 'BufEnter'}
    use {'airblade/vim-rooter', event = 'BufEnter'}
    use {'mileszs/ack.vim', event = 'BufEnter'}
    use {'rking/ag.vim', event = 'BufEnter'}
    use {'dyng/ctrlsf.vim', event = 'BufEnter'}
    use {'jeetsukumaran/vim-buffergator', event = 'BufEnter'}
    use {'ConradIrwin/vim-bracketed-paste', event = 'BufEnter'}
    use {'Shougo/defx.nvim', event = 'BufEnter'}
    use {'kristijanhusak/defx-icons', event = 'BufEnter'}
    use {'kristijanhusak/defx-git', event = 'BufEnter'}
    use {'derekwyatt/vim-fswitch', event = 'BufEnter'}
    use {'honza/vim-snippets', event = 'BufEnter'}
    use {'SirVer/ultisnips', ft = {'tex'}, event = 'BufEnter'}
    use {'lervag/vimtex', event = 'BufEnter'}
    use {'kevinhwang91/nvim-bqf', event = 'BufEnter'}

    use {'stsewd/tree-sitter-comment'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'tree-sitter/tree-sitter-cpp'}
    use {'nvim-treesitter/nvim-treesitter-refactor'}
    use {'nvim-treesitter/playground'}
    use {'p00f/nvim-ts-rainbow'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}

    use {'ludovicchabant/vim-gutentags', event = 'BufEnter'}
    use {'skywind3000/gutentags_plus', event = 'BufEnter'}
    use 'altercation/vim-colors-solarized'
    use {'DanilaMihailov/beacon.nvim', event = 'BufEnter'}
    use {'justinmk/vim-dirvish', event = 'BufEnter'}

    use 'rcarriga/nvim-notify'
    use {'Yggdroot/LeaderF', run = ':LeaderfInstallCExtension', event = 'BufEnter'}
    use {'preservim/tagbar', event = 'BufEnter'}
    use {'mhinz/vim-signify', event = 'BufEnter'}
    use {'tpope/vim-fugitive', event = 'BufEnter'}
    use {'kdheepak/lazygit.nvim'}
    use {'moll/vim-bbye', event = 'BufEnter'}
    use {'will133/vim-dirdiff', event = 'BufEnter'}
    use {'mg979/vim-visual-multi', event = 'BufEnter'}
    use {'liuchengxu/vim-which-key', event = 'BufEnter'}
    use {'puremourning/vimspector',
        setup = [[vim.g.vimspector_enable_mappings = 'VISUAL_STUDIO']],
        event = 'BufEnter'
    }
    use {'lewis6991/impatient.nvim', event = 'BufEnter'}

    --缩进线
    use {'Yggdroot/indentLine', event = 'BufEnter'}
    ---删除行尾空格
    use {'ntpeters/vim-better-whitespace', event = 'BufEnter'}
    use 'dhruvasagar/vim-table-mode'
    --日历和笔记
    use {'vimwiki/vimwiki', event = 'BufEnter'}
    --use {'mattn/calendar-vim', event = 'BufEnter'}
    use {'itchyny/calendar.vim', event = 'BufEnter'}
    --markdown相关
    use {'ferrine/md-img-paste.vim', ft = {'md'}, event = 'BufEnter'}
    use {'tpope/vim-markdown', ft = {'md'}, event = 'BufEnter'}
    use {'iamcco/mathjax-support-for-mkdp', ft = {'md'}, event = 'BufEnter'}
    use {'iamcco/markdown-preview.nvim', ft = {'md'}, event = 'BufEnter'}
    use {'mzlogin/vim-markdown-toc', ft = {'md'}, event = 'BufEnter'}
    use {'jszakmeister/markdown2ctags', ft = {'md'}, event = 'BufEnter'}
    use {'joker1007/vim-markdown-quote-syntax', ft = {'md'}, event = 'BufEnter'}
    use {
        "askfiy/nvim-picgo",
        config = function()
            -- it doesn't require you to do any configuration
            require("nvim-picgo").setup()
        end
    }
    --PlantUML相关
    use {'tyru/open-browser.vim', ft = {'plantuml'}, event = 'BufEnter'}
    use {'weirongxu/plantuml-previewer.vim', ft = {'plantuml'}, event = 'BufEnter'}
    use {'sheerun/vim-polyglot', ft = {'plantuml', 'markdown'}}
    --翻译
    use {'ianva/vim-youdao-translater', event = 'BufEnter'}
    --切换中文输入法
    use {'CodeFalling/fcitx-vim-osx', event = 'InsertEnter'}

    use {'kyazdani42/nvim-web-devicons', event = 'BufEnter'}
    use {'SmiteshP/nvim-gps'}
    use {'nvim-lualine/lualine.nvim', after = 'nvim-gps'}
    use {'kdheepak/tabline.nvim', after = "lualine.nvim"}
    use {'arkav/lualine-lsp-progress', after = "lualine.nvim"}

    --lsp
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    --use {'hrsh7th/cmp-vsnip'}
    --use {'hrsh7th/vim-vsnip'}
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lua"
    use "L3MON4D3/LuaSnip" --snippet engine
 
    use {'f3fora/cmp-spell'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'tzachar/cmp-tabnine', run = 'sh install.sh'}
    use {'rafamadriz/friendly-snippets'}
    use {"lukas-reineke/cmp-under-comparator"}
    use {'ray-x/lsp_signature.nvim'}
    use {'windwp/nvim-autopairs'}

    use "vim-test/vim-test"
    use {
        "rcarriga/vim-ultest",
        run = ":UpdateRemotePlugins"
    }

    use {'williamboman/nvim-lsp-installer'}
    use {'neovim/nvim-lspconfig'}

    --use 'aymericbeaumet/vim-symlink'
    --use {'neoclide/coc.nvim', branch = "master", run = 'cd app && yarn install --frozen-lockfile'}
    --use 'kdheepak/lazygit.nvim'
    --use 'nvim-lua/plenary.nvim'
    --use 'Shatur/neovim-session-manager'
    --use {'nvim-telescope/telescope.nvim',
            --requires = {
                --{'nvim-lua/plenary.nvim'}
            --}
        --}
    --use 'goolord/alpha-nvim'
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
    ----语法高亮
    --use 'scrooloose/syntastic'
    --命令模式下插入当前文件全路径名
    --也可以在insert模式下ctrl+r shift+5
    --:put =expand('%:p')
    --命令模式下插入缓冲区其他文件全路径名
    --也可以在insert模式下ctrl+r shift+3
    --:put =expand('#:p')
end)
