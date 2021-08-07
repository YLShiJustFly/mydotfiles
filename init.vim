if empty(glob(expand('~/.config/nvim/autoload/plug.vim')))
    silent !curl -fLo expand('~/.config/nvim/autoload/plug.vim') --create-dirs
                \ http://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync --insecure | source $MYVIMRC
endif
call plug#begin(expand('~/.config/nvim/plugged'))

"快捷键增强
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'sgur/vim-textobj-parameter'
Plug 'glts/vim-textobj-comment'
Plug 'Julian/vim-textobj-brace'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'

"全局替换 
Plug 'dkprice/vim-easygrep'
"快速注释
Plug 'preservim/nerdcommenter'

"重复上一个动作
Plug 'tpope/vim-repeat'
"命令模式使用emacs快捷键
Plug 'tpope/vim-rsi'
"自动括号补全
Plug 'jiangmiao/auto-pairs'

"快速移动光标
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'
Plug 'tommcdo/vim-exchange'
Plug 'terryma/vim-expand-region'
"移动平滑
Plug 'psliwka/vim-smoothie'
"加速jk
Plug 'rhysd/accelerated-jk'

"状态栏
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"高亮复制区域
Plug 'machakann/vim-highlightedyank'

"撤销支持分支
Plug 'mbbill/undotree'
"bookmark显示标记
Plug 'kshenoy/vim-signature'

"打开最近打开的文件
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap', {'do': { -> clap#installer#force_download() }}
Plug 'mhinz/vim-janah'
"打开文件定位到以前打开的地方
Plug 'farmergreg/vim-lastplace'
"保存窗口为session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"内置终端帮助
Plug 'skywind3000/vim-terminal-help'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'

"切换根目录
Plug 'airblade/vim-rooter'
"快速查找
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
"表格
Plug 'dhruvasagar/vim-table-mode'

"缩进线
Plug 'Yggdroot/indentLine'

"可以粘贴
Plug 'ConradIrwin/vim-bracketed-paste'
"目录树
Plug 'Shougo/defx.nvim'
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

"快速跳转.h和.c文件
Plug 'derekwyatt/vim-fswitch'

"自动补全
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'stsewd/tree-sitter-comment'
Plug 'regen100/cmake-language-server'
Plug 'neovim/nvim-lspconfig'
Plug 'ojroques/nvim-lspfuzzy'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'kabouzeid/nvim-lspinstall'

"语法高亮
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tree-sitter/tree-sitter-cpp'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

"主题
Plug 'altercation/vim-colors-solarized'

"信标
Plug 'DanilaMihailov/beacon.nvim', { 'on': [] }

"目录树和文件内函数列表
Plug 'justinmk/vim-dirvish'
Plug 'Yggdroot/LeaderF'
Plug 'preservim/tagbar'

"实时git比对
Plug 'mhinz/vim-signify'
"git比对
Plug 'tpope/vim-fugitive'
"merge比对
Plug 'will133/vim-dirdiff'

"自动对齐代码
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

"日历和笔记
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'

"markdown相关
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'ferrine/md-img-paste.vim'
Plug 'mzlogin/vim-markdown-toc'
Plug 'jszakmeister/markdown2ctags'
Plug 'joker1007/vim-markdown-quote-syntax'

"PlantUML相关
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

"翻译
Plug 'ianva/vim-youdao-translater'

"多光标操作
Plug 'mg979/vim-visual-multi'
"快捷键提醒
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

"切换中文输入法
Plug 'CodeFalling/fcitx-vim-osx'

"Plug 'L3MON4D3/LuaSnip'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
"定义跳转,自动补全，目录树
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"函数原型提醒
"Plug 'Shougo/echodoc.vim'
"目录树图标
"Plug 'ryanoasis/vim-devicons'
"Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
"Plug 'justinmk/vim-syntax-extra', { 'for': ['java', 'python', 'vim', 'c', 'bison', 'flex', 'cpp'] }
""java文本增强
"Plug 'uiiaoo/java-syntax.vim'
""java编译运行
"Plug 'wsdjeg/JavaUnit.vim'
""java测试文件跳转
"Plug 'keitokuch/vim-junit-jump'
""java生成单元测试文件
"Plug 'Chris-Slade/vim-makeunit'
""python错误检测
"Plug 'nvie/vim-flake8'
""python缩进
"Plug 'Vimjas/vim-python-pep8-indent'
""python自动格式化
"Plug 'tell-k/vim-autopep8'
"彩虹括号
"Plug 'luochen1990/rainbow'
""根据类定义自动生成函数框架
"Plug 'derekwyatt/vim-protodef'
""调试工具
"Plug 'puremourning/vimspector'
""语法检测
"Plug 'dense-analysis/ale',{'on':'ALEToggle','for':['vim', 'c', 'cpp', 'java', 'python']}
"Plug 'scrooloose/syntastic',{'on':'SyntasticToggleMode','for':['yacc']}

call plug#end()

"命令模式下插入当前文件全路径名
"也可以在insert模式下ctrl+r shift+5
":put =expand('%:p')
"命令模式下插入缓冲区其他文件全路径名
"也可以在insert模式下ctrl+r shift+3
":put =expand('#:p')

"设置leader键映射
let mapleader = ";"
let maplocalleader = "\<space>"

"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

"配色方案
let g:solarized_termcolors=16
if !has("gui_running")
    let g:solarized_termtrans=1
endif
colorscheme solarized
set background=dark
"set background=light

if &term == "fbterm"
    set cursorline
elseif $TERMCAP =~ 'Co#256'
    set t_Co=256
    set cursorline 
endif

""让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

if has('gui_running')
    set lines=999 columns=999 "设置最大化
    set nofu                  "设置不全屏
    set guioptions=mr         "c去掉
    set guioptions=           "隐藏全部
    set guioptions+=m         "隐藏菜单栏
    set guioptions-=T         "隐藏工具栏
    set guioptions-=L         "隐藏左侧滚动条
endif

"TextEdit might fail if hidden is not set.
set hidden

"Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"设置光标不闪烁
set gcr=a:block-blinkon0

"设置粘贴
set clipboard+=unnamedplus
set pastetoggle=<m-p>
let g:clipboard = {
            \'copy': { '+': 'lemonade copy', '*': 'lemonade copy' },
            \'paste': { '+': 'lemonade paste', '*': 'lemonade paste' },
            \'name': 'lemonade',
            \}

"取消VI兼容,VI键盘模式不易用
set nocompatible

"打开语法高亮
syntax enable
syntax on

"设置256色
set t_Co=256

"不同文件类型使用不同插件
filetype plugin indent on

"显示行号, 或set number
set nu

"历史命令保存行数 
set history=100 

"当文件被外部改变时自动读取
set autoread 

"取消自动备份及产生swp文件
set nobackup
set nowb
set noswapfile

"允许使用鼠标点击定位
set mouse=a
set autowrite
"允许区域选择
set selection=exclusive
set selectmode=mouse,key

"设置更新时间
set updatetime=4000

"高亮光标所在行
set cursorline

"取消光标闪烁
set novisualbell

"状态栏显示当前执行的命令
set showcmd

"设置命令行高度为1
set cmdheight=1

"高亮显示匹配的括号
set showmatch

"在搜索的时候忽略大小写
set ignorecase
"set smartcase

"高亮被搜索的句子
set hlsearch

"在搜索时,输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

"继承前一行的缩进方式,特别适用于多行注释
set autoindent

"为C程序提供自动缩进
set smartindent

"使用C样式的缩进
set cindent

"制表符为4个空格,统一缩进为4个空格
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"允许使用退格键,或set backspace=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"取消换行
set nowrap

"启动的时候不显示提示
set shortmess=ati

"在被分割的窗口间显示空白,便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"光标移动到buffer的顶部和底部时保持3行距离, 或set so=3
set scrolloff=3

"设定字体
set guifont=Hack\ Nerd\ Font:h17
"set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h16
 
"设定编码
set enc=utf-8
set tenc=utf-8
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
set fileencodings=ucs-bom,utf-8,chinese
set langmenu=zh_CN.UTF-8

"自动补全
set completeopt=menuone,menu,longest,noselect
set foldenable

"标尺功能,显示当前光标所在行列号
set ruler

"自动补全命令时候使用菜单式匹配列表
set wildmenu

"设置折叠
set foldmethod=expr

"设置隐藏
if has('conceal')
	set conceallevel=0
	set concealcursor=n
endif

"自定义操作
"当光标一段时间保持不动了,就禁用高亮
autocmd cursorhold * set nohlsearch
"当输入查找命令时,再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

"设置取消光标高亮
nnoremap <c-n> :<c-u>nohlsearch<cr>

"插入空格
nnoremap [b i <esc>
nnoremap ]b a <esc>

"插入文件名
inoremap <c-r> <c-r>=expand("%:t")<cr>
"insert mode shortcut
inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>
inoremap <c-d> <DELETE>

"设置close和cclose
nnoremap <c-u> :<c-u>close<cr>
nnoremap <c-d> :<c-u>cclose<cr>
nnoremap <localleader><localleader> <ESC>A;<ESC>

"设置内置lsp
"设置错误符号
sign define LspDiagnosticsSignError text=✗ texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text=⚡ texthl=LspDiagnosticsSignWarning linehl= numhl=

lua <<EOF
--设置lsp
local lspconfig = require'lspconfig'

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- Enable underline, use default values
    underline = false,
    -- Enable virtual text, override spacing to 4
    virtual_text = true, 
    -- Use a function to dynamically turn signs off
    -- and on, using buffer local variables
    signs = false,
    -- Disable a feature
    update_in_insert = false,
  }
)

lspconfig.ccls.setup {
    init_options = {
        compilationDatabaseDirectory = "compile_commands.json";
    };
    index = {
      threads = 16;
    };
    clang = {
      excludeArgs = { "-frounding-math"} ;
    }
};
require'lspconfig'.ccls.setup{}

lspconfig.jdtls.setup {
    init_options = {
        compilationDatabaseDirectory = "pom.xml";
    };
    index = {
      threads = 16;
    };
};
require'lspconfig'.jdtls.setup{}

--设置补全
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- Enable the following language servers
local servers = { 'ccls', 'rust_analyzer', 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    -- You will probably want to add a custom on_attach here to locally map keybinds to buffers with an active client
    -- on_attach = on_attach,
    capabilities = capabilities,
  }
end
-- Set completeopt to have a better completion experience
-- Compe setup
require('compe').setup {
  source = {
    path = true,
    nvim_lsp = true,
    buffer = true,
    calc = false,
    nvim_lua = false,
    vsnip = false,
    ultisnips = true,
  },
}
-- Utility functions for compe and luasnip
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end
local check_back_space = function()
  local col = vim.fn.col '.' - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' then
    return true
  else
    return false
  end
end
-- Use (s-)tab to:
--- move to prev/next item in completion menu
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-n>'
  elseif check_back_space() then
    return t '<Tab>'
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-p>'
  else
    return t '<S-Tab>'
  end
end
-- Map tab to the above tab complete functions
vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.tab_complete()', { expr = true })
vim.api.nvim_set_keymap('s', '<Tab>', 'v:lua.tab_complete()', { expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
vim.api.nvim_set_keymap('s', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
-- Map compe confirm and complete functions
vim.api.nvim_set_keymap('i', '<cr>', 'compe#confirm("<cr>")', { expr = true })
vim.api.nvim_set_keymap('i', '<c-space>', 'compe#complete()', { expr = true })
EOF

nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent><leader>fm :Lspsaga lsp_finder<CR>
nnoremap <silent>gs :Lspsaga signature_help<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent><leader>rn :Lspsaga rename<CR>
nnoremap <silent>gd :Lspsaga preview_definition<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

nnoremap <silent><c-k> <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent><c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent><leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent>[a <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent>]a <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent><c-j> <cmd>lua vim.lsp.buf.implementation()<CR>

autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics({focusable = false})

"Ultisnip设置
let g:UltiSnipsExpandTrigger="<NULL>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"
let g:UltiSnipsEditSplit="vertical"

""coc.nvim设置
"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"function! s:show_documentation()
  "if (index(['vim','help'], &filetype) >= 0)
    "execute 'h '.expand('<cword>')
  "elseif (coc#rpc#ready())
    "call CocActionAsync('doHover')
  "else
    "execute '!' . &keywordprg . "". expand('<cword>')
  "endif
"endfunction
"if &filetype == "java"
    "nnoremap <leader>cv :CocCommand java.debug.vimspector.start<cr>
    "nnoremap <leader>sv :VimspectorReset<cr>
"endif
"nnoremap <leader>n :CocCommand explorer<cr>
"nnoremap <leader>cde :call coc#config('diagnostic.enable', v:true)<cr>
"nnoremap <leader>cdd :call coc#config('diagnostic.enable', v:false)<cr>
"nnoremap <leader>cae :call coc#config('diagnostic.displayByAle', v:true)<cr>
"nnoremap <leader>cad :call coc#config('diagnostic.displayByAle', v:false)<cr>
""Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)
"nmap <leader>rf <Plug>(coc-refactor)
"inoremap <silent><expr> <c-n> pumvisible() ? "\<c-n>":
      "\ <SID>check_back_space() ? "\<tab>":
      "\ coc#refresh()
"inoremap <silent><expr> <c-p> pumvisible() ? "\<c-p>":
      "\ <SID>check_back_space() ? "\<tab>":
      "\ coc#refresh()
""Make <cr> auto-select the first completion item and notify coc.nvim to
""format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              "\: "\<c-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"
""Use `[g` and `]g` to navigate diagnostics
""Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
""nmap <silent> [a <Plug>(coc-diagnostic-prev)
""nmap <silent> ]a <Plug>(coc-diagnostic-next)
""GoTo code navigation.
""nmap <silent> fj <Plug>(coc-definition)
"nmap <silent> <c-]> <Plug>(coc-definition)
""nmap <silent> <c-j> <Plug>(coc-implementation)
"nmap <silent> <c-k> <Plug>(coc-references-used)
""nmap <silent> <c-\> <Plug>(coc-declaration)
""nmap <silent> <c-m> <Plug>(coc-type-definition)
""nmap <silent> fi <Plug>(coc-implementation)
""Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<cr>
""Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold *.c *.java *.cpp *.xml silent call CocActionAsync('highlight')
""Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"augroup mygroup
  "autocmd!
  ""Setup formatexpr specified filetype(s).
  "autocmd FileType typescript,json,java setl formatexpr=CocAction('formatSelected')
  ""Update signature help on jump placeholder.
  "autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
""Applying codeAction to the selected region.
""Example: `<leader>aap` for current paragraph
"xmap <leader>ca <Plug>(coc-codeaction-selected)
"nmap <leader>ca <Plug>(coc-codeaction-selected)
""Remap keys for applying codeAction to the current buffer.
"nmap <leader>cm <Plug>(coc-codeaction)
""Apply AutoFix to problem on the current line.
"nmap <c-c>  <Plug>(coc-fix-current)
""Remap <c-f> and <c-b> for scroll float windows/popups.
"if has('nvim') || has('patch-8.2.0750')
  "nnoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-f>"
  "nnoremap <silent><nowait><expr> <c-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-b>"
  "inoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>": "\<Right>"
  "inoremap <silent><nowait><expr> <c-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>": "\<Left>"
  "vnoremap <silent><nowait><expr> <c-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-f>"
  "vnoremap <silent><nowait><expr> <c-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-b>"
"endif
"""Use CTRL-S for selections ranges.
"""Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <c-q> <Plug>(coc-range-select)
"xmap <silent> <c-q> <Plug>(coc-range-select)
""Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocAction('format')
""Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call CocAction('fold', <f-args>)
""Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')
""Add (Neo)Vim's native statusline support.
""NOTE: Please see `:h coc-status` for integrations with external plugins that
""provide custom statusline: lightline.vim, vim-airline.
""set statusline^=%{StatusDiagnostic()}%{coc#status()}%{get(b:,'coc_current_function','')}
""Mappings for CoCList
""Show all diagnostics.
"nnoremap <silent><nowait> <leader>cld :<c-u>CocList diagnostics<cr>
""Manage extensions.
"nnoremap <silent><nowait> <leader>cle :<c-u>CocList extensions<cr>
""Show commands.
"nnoremap <silent><nowait> <leader>clc :<c-u>CocList commands<cr>
""Find symbol of current document.
"nnoremap <silent><nowait> <leader>clo :<c-u>CocList outline<cr>
""Search workspace symbols.
""nnoremap <silent><nowait> <leader>cls :<c-u>CocList -I symbols<cr>
""Do default action for next item.
"nnoremap <silent><nowait> <leader>cn :<c-u>CocNext<cr>
""Do default action for previous item.
"nnoremap <silent><nowait> <leader>cu :<c-u>CocPrev<cr>
""Resume latest coc list.
"nnoremap <silent><nowait> <leader>clr :<c-u>CocListResume<cr>
""搜索函数
"nnoremap <silent><nowait> <leader>cf :<c-u>CocList -I symbols<cr>  
""Map function and class text objects
""NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ia <Plug>(coc-classobj-i)
"omap ia <Plug>(coc-classobj-i)
"xmap aa <Plug>(coc-classobj-a)
"omap aa <Plug>(coc-classobj-a)

"defx设置
nnoremap <leader>n :Defx -columns=icons:indent:git:filename:type<cr>
autocmd FileType defx call s:defx_my_settings()
call defx#custom#option('_', {
      \ 'winwidth': 40,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })

function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> E
 \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('preview')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_tree', 'toggle')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
endfunction

"设置vim-terminal-help
let g:terminal_kill = "term"
let g:terminal_list = 0
let g:terminal_rootmarkers=['.git']
let g:terminal_cwd = 2
let g:terminal_height = 24
let g:terminal_fixheight = 1
if has('nvim')
    function! TerminalQuit()
        let bid = get(t:, '__terminal_bid__', -1)
        if bid < 0
            return
        endif
        let name = bufname(bid)
        if name == ''
            return
        endif
        exec "bw! ". name
    endfunc
    au TermClose * call TerminalQuit()
endif

"设置asyncrun
let g:asyncrun_rootmarks = ['.git']
"任务结束时候响铃提醒
let g:asyncrun_bell = 1
nnoremap <leader>rb :AsyncRun -mode=tab -focus=0 -pos=tab build<cr>
nnoremap <leader>rr :AsyncRun -mode=tab -focus=0 -pos=tab run<cr>
nnoremap <leader>rs :AsyncStop<cr>
nnoremap <leader>rg :AsyncRun -mode=tab -focus=1 -pos=tab gdb<cr>
 

"设置asynctasks
let g:asynctasks_term_reuse = 1
let g:asynctasks_term_focus = 1
let g:asynctasks_term_pos = 'tab'
"let g:asynctasks_term_rows = 10    " set height for the horizontal terminal split
"let g:asynctasks_term_cols = 80    " set width for vertical terminal split
"nnoremap <leader>rb :AsyncTask build<cr>
"nnoremap <leader>rr :AsyncTask run<cr>

""设置rainbow括号
"let g:rainbow_active = 1
"let g:rainbow_conf = {
    "\	'guifgs': ['brown', 'darkgreen', 'darkgray', 'gray'],
    "\	'ctermfgs': ['brown', 'darkgreen', 'darkgray', 'gray'],
    "\	'operators': '_,_',
    "\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    "\	'separately': {
    "\		'*': {},
    "\		'tex': {
    "\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    "\		},
    "\		'vim': {
    "\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    "\		},
    "\		'html': {
    "\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    "\		},
    "\		'css': 0,
    "\	}
    "\}

"设置accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
let g:accelerated_jk_acceleration_limit=100

"设置vim-smoothie
let g:smoothie_enabled = 1

"翻译
vnoremap <silent> <leader>yd <esc>:Ydv<cr>
nnoremap <silent> <leader>yd :Ydc<cr>
noremap <leader>yde :Yde<cr>

"设置vim-rooter
let g:rooter_patterns = ['.git', 'compile_commands.json']
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_manual_only = 0

"设置ack
if executable('ag')
    let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column --ignore test'
endif

cnoreabbrev Ack Ack!
nnoremap <leader>ae :Ack!<space>
"如果不输入任何搜索参数,则默认以光标下的单词为搜索条件,并把它映射到<leader>+aa上
nnoremap <leader>aa :Ack!<cr>
"高亮搜索结果
let g:ackhighlight = 1

"设置ag
let g:ag_prg="ag --vimgrep --nogroup --nocolor --column"
nnoremap <leader>te :Ag!<space>
nnoremap <leader>ta :Ag!<cr>

"设置protodef
let g:disable_protodef_mapping = 0
"设置 pullproto.pl 脚本路径
let g:protodefprotogetter=expand('~/.config/nvim/plugged/vim-protodef/pullproto.pl')
"成员函数的实现顺序与声明顺序一致
let g:disable_protodef_sorting=1

"设置fswitch
nmap <silent> <c-s> :FSHere<cr>

"设置ctrlsf
let g:ctrlsf_default_root = '.root'
nmap <leader>ct :CtrlSF<space>

"设置vim_indent_guides
let g:indentLine_enabled = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
noremap <leader>in :<c-u>IndentLinesToggle<cr>
"set list lcs=tab:\|\ 

"设置table_mode
let g:table_mode_corner='|'

"设置vimwiki
let g:vimwiki_menu = ''         "不在菜单栏上显示Vimwiki
let g:vimwiki_use_mouse = 1     "使用鼠标
let g:vimwiki_list=[{'path': expand('~/.config/nvimwiki'),
 \ 'path_html': expand('~/.config/.vimwiki/html'),
 \ 'html_header': expand('~/.config/.vimwiki/html/header.tpl'),
 \ 'html_footer': expand('~/.config/.vimwiki/html/footer.tpl'),
 \ 'css_name': 'styles/base.css',
 \ 'diary_link_count': 8,
 \ 'diary_index': 'index'}]
let g:vimwiki_global_ext=0
let g:vimwiki_camel_case = 0
"是否在计算字串长度时用特别考虑中文字符
let g:vimwiki_CJK_length = 1

"设置calendar
let g:calendar_diary = expand('~/.config/.canlendar')"设置日记的存储路径
let g:calendar_monday = 1           "以星期一为开始
let g:calendar_focus_today = 1      "光标在当天的日期上
let g:calendar_mark = 'left-fit' "可以让*和数字可靠近
let g:calendar_mark = 'right' "上面设置后在昨天写日志,修改成right正常
let g:calendar_mruler = '一月,二月,三月,四月,五月,六月,七月,八月,九月,十月,十一月,十二月'     "中文,可自行修改
let g:calendar_wruler = '日 一 二 三 四 五 六'
let g:calendar_navi_label = '往前,今日,往后'
"map <leader>cal :Calendar<cr>         "快捷键,默认 <leader>cal,水平方向：<leader>caL

"设置dashboard
let g:dashboard_default_executive ='clap'
let g:indentLine_fileTypeExclude = ['dashboard']
"let g:dashboard_fzf_engine='ag'

let g:dashboard_custom_header = [
      \'             ▄▄▀▀▀▀▀▀▀▀▄▄              ',
      \'          ▄▀▀            ▀▄▄           ',
      \'        ▄▀                  ▀▄         ',
      \'       ▌             ▀▄       ▀▀▄      ',
      \'      ▌                ▀▌        ▌     ',
      \'     ▐                  ▌        ▐     ',
      \'     ▌▐    ▐    ▐       ▌         ▌    ',
      \'    ▐ ▌    ▌  ▐ ▌      ▐       ▌▐ ▐    ',
      \'    ▐ ▌    ▌▄▄▀▀▌▌     ▐▀▌▀▌▄  ▐ ▌ ▌   ',
      \'     ▌▌    ▐▀▄▌▌▐▐    ▐▐▐ ▐ ▌▌ ▐ ▌▄▐   ',
      \'   ▄▀▄▐    ▌▌▄▀▄▐ ▌▌ ▐ ▌▄▀▄ ▐  ▐ ▌ ▀▄  ',
      \'  ▀▄▀  ▌  ▄▀ ▌█▐  ▐▐▀   ▌█▐ ▀▄▐ ▌▌   ▀ ',
      \'   ▀▀▄▄▐ ▀▄▀ ▀▄▀        ▀▄▀▄▀ ▌ ▐      ',
      \'      ▀▐▀▄ ▀▄        ▐      ▀▌▐        ',
      \'        ▌ ▌▐ ▀              ▐ ▐        ',
      \'        ▐ ▐ ▌    ▄▄▀▀▀▀▄    ▌ ▐        ',
      \'         ▌▐ ▐▄   ▐     ▌  ▄▀  ▐        ',
      \'        ▐  ▌▐▐▀▄  ▀▄▄▄▀ ▄▀▐   ▐        ',
      \'        ▌▌ ▌▐ ▌ ▀▄▄    ▄▌▐ ▌  ▐        ',
      \'       ▐ ▐ ▐▐ ▌    ▀▀▄▀▌▐  ▌  ▌        ',
      \'       ▌  ▌▐ ▌        ▐▀▄▌ ▐           ',
      \]

let g:dashboard_custom_shortcut={
  \ 'last_session' : 'Semicolon d d',
  \ 'find_history' : 'Semicolon d h',
  \ 'find_file' : 'Semicolon d f',
  \ 'new_file' : 'Semicolon d n',
  \ 'find_word' : 'Semicolon d t',
  \ 'change_colorscheme' : 'Semicolon d c',
  \ 'book_marks' : 'Semicolon d r',
  \ }

nnoremap <leader>m :<c-u>Dashboard<cr>
nnoremap <leader>ds :<c-u>SessionSave<cr>
nnoremap <leader>dl :<c-u>SessionLoad<cr>
nnoremap <silent> <Leader>dh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>df :DashboardFindFile<CR>
nnoremap <silent> <Leader>dc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>dt :DashboardFindWord<CR>
nnoremap <silent> <Leader>dr :DashboardJumpMark<CR>
nnoremap <silent> <leader>dn :DashboardNewFile<cr>

"设置airline
"映射切换buffer的键位
nnoremap <c-h> :bp<cr>
nnoremap <c-l> :bn<cr>
nnoremap <c-c> :bd!<cr>
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme='papercolor'
"使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
let g:airline#extensions#nvimlsp#enabled = 1
let g:airline#extensions#nvimlsp#error_symbol = '✗'
let g:airline#extensions#nvimlsp#warning_symbol = '⚡'
"let g:airline#extensions#ale#enabled = 1
"let g:airline#extensions#ale#error_symbol = '✗'
"let g:airline#extensions#ale#warning_symbol = '⚡'
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_b = '%{strftime("%m/%d/%y - %H:%M")}'
let g:airline_stl_path_style = 'short'
"开启tabline
let g:airline#extensions#tabline#enabled = 1
"tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#right_sep = '◀'
"tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|❯'
let g:airline#extensions#tabline#right_alt_sep = '|❮'
"tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#keymap_ignored_filetypes =
        \ ['nerdtree', 'dashboard-nvim']
nnoremap <leader>dd <Plug>XTablineReopen <SID>ReopenLastTab

augroup load_beacon
    autocmd!
    autocmd InsertEnter * call plug#load('beacon.nvim') | autocmd! load_beacon
augroup END

"设置undotree
if has("persistent_undo")
    set undofile
    set undodir=/Users/syl/.config/nvim/plugged/undotree/.undodir
endif
let g:undotree_SetFocusWhenToggle = 1
nnoremap <leader>un :<c-u>UndotreeToggle<cr>
"let g:undotree_WindowLayout = 1

"设置vim-session
let g:session_autosave = 'yes'
let g:session_autoload = 'no'

"JavaUnitJump设置
nnoremap <c-e> :<c-u>JavaJUnitJump<cr>

"设置格式化代码格式
augroup autoformat_settings
  "autocmd FileType bzl AutoFormatBuffer buildifier
  "autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  "autocmd FileType dart AutoFormatBuffer dartfmt
  "autocmd FileType go AutoFormatBuffer gofmt
  "autocmd FileType gn AutoFormatBuffer gn
  "autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  "autocmd FileType java AutoFormatBuffer clang-format
  "autocmd FileType python AutoFormatBuffer yapf
  "autocmd FileType python AutoFormatBuffer autopep8
  "autocmd FileType rust AutoFormatBuffer rustfmt
  "autocmd FileType vue AutoFormatBuffer prettier
augroup END

"map <leader>mi :<c-u>Glaive codefmt clang_format_style=Microsoft<cr>
"map <leader>ch :<c-u>Glaive codefmt clang_format_style=Chromium<cr>
"map <leader>mo :<c-u>Glaive codefmt clang_format_style=Mozilla<cr>
"map <leader>we :<c-u>Glaive codefmt clang_format_style=WebKit<cr>
"map <leader>fi :<c-u>Glaive codefmt clang_format_style=file<cr>
"map <leader>ll :<c-u>Glaive codefmt clang_format_style=LLVM<cr>
"map <leader>go :<c-u>Glaive codefmt clang_format_style=Google<cr>
"map <leader>gn :<c-u>Glaive codefmt clang_format_style=GNU<cr>

"设置dirdiff
let g:DirDiffExcludes = "*.git,CVS,*.class,*.exe,.*.swp"

"设置vimspector映射方式
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

"设置vim-visual-multi
let g:VM_default_mappings = 0
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<m-t>'   " replace C-n
let g:VM_maps['Find Subword Under'] = '<m-j>'   " replace visual C-n
let g:VM_maps["Add Cursor Down"]    = '<m-j>'   " new cursor down
let g:VM_maps["Add Cursor Up"]      = '<m-k>'   " new cursor up
"let g:VM_maps["Toggle Mappings"]    = '<cr>'    " toggle VM buffer mappings
"let g:VM_maps["Exit"]               = '<Space>' " quit VM

"vim-which-key设置
nnoremap <silent> <leader> :WhichKey ';'<CR>

"signify设置
nmap [g <plug>(signify-prev-hunk)
nmap ]g <plug>(signify-next-hunk)

"syntastic实时语法分析
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_yacc_checkers = ['bison']
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol= '⚡'

nnoremap <silent> <leader>sy :SyntasticToggleMode<cr>

""ale实时语法分析
""let g:ale_enabled = 0
"let g:ale_enabled = 1
"let g:ale_lint_on_enter = 0
"let g:ale_lint_on_text_changed = 'nerver'
"let g:ale_lint_on_insert_leave = 0
"let g:ale_lint_on_save = 1
""自定义error和warning图标
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '⚡'
""在vim自带的状态栏中整合ale
"let g:ale_sign_column_always = 1
"let g:ale_set_highlights = 0
"let g:ale_linters_explicit = 0
"let g:ale_completion_delay = 500
"let g:ale_echo_delay = 20
"let g:ale_lint_delay = 500
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1
"let g:ale_disable_lsp = 1
"let g:ale_c_parse_compile_commands = 1
""let g:ale_cpp_ccls_init_options = {
    ""\   'cacheDirectory': '/tmp/.ccls',
    ""\   'cacheFormat': 'binary',
    ""\   'diagnostics': {
    ""\     'onOpen': 0,
    ""\     'opChange': 1000,
    ""\   },
    ""\ } 
"let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']

""ale语法检测支持c,c++
"let g:ale_linters = {
"\    'c': ['ccls'],
"\    'cpp': ['ccls']
"\}
"let g:ale_fixers = {
"\    'c': ['ccls'],
"\    'cpp': ['ccls']
"\}
"highlight clear ALEErrorSign
"highlight clear ALEWarningSign
"highlight ALEWarning ctermbg=DarkMagenta
""nmap <silent> <c-]> :<c-u>ALEGoToDefinition<cr>
""nmap <silent> <c-k> :<c-u>ALEFindReference<cr>
""nmap <silent> <c-m> :<c-u>ALEGoToTypeDefinition<cr>
"highlight ALEError ctermbg=DarkMagenta
"nmap [a <Plug>(ale_previous_wrap)
"nmap ]a <Plug>(ale_next_wrap)
"""let g:ale_pattern_options = {
"""\ '\.min\.cpp$': {'ale_linters_aliases': ['gcc', 'clang'], 'ale_fixers': []},
"""\ '\.min\.go$': {'ale_linters_aliases': ['gotype', 'gopls', 'gofmt', 'staticcheck', 'golint'], 'ale_fixers': []},
"""\}

""ale语法检测支持java
"let g:ale_linters = {
"\    'java': ['/usr/local/bin/javalsp']
"\}
"let g:ale_fixers = {
"\    'java': ['/usr/local/bin/javalsp']
"\}

""ale语法检测支持python
"let g:ale_linters = {
"\    'python': ['flake8']
"\}
"let g:ale_fixers = {
"\    'python': ['flake8']
"\}

"let g:ale_linters = {
"\    'markdown': ['markdownlint']
"\}

""<leader>al触发/关闭语法检查
"nmap <leader>ae :ALEEnable<cr>
"nmap <leader>ad :ALEDisable<cr>

""<leader>ad查看错误或警告的详细信息
"nmap <leader>ad :ALEDetail<cr>

"treesitter配置
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "cpp", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {                                                                                                                                                                 
    enable = true,                                                                                                                                                             
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
  },                                                                                                                                                                           
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ai"] = "@class.outer",
        ["ii"] = "@class.inner",

      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["]r"] = "@parameter.inner",
        ["]f"] = "@function.outer",
      },
      swap_previous = {
        ["[r"] = "@parameter.inner", ["[f"] = "@function.outer",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
    lsp_interop = {
      enable = true,
      border = 'none',
      peek_definition_code = {
        ["df"] = "@function.outer",
        ["dF"] = "@class.outer",
      },
    },

  },
}
EOF

lua <<EOF
require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}
EOF

"设置编译和自动保存文件
let scopycmd=expand('~/develop/sendfiletoremote/sendfile.sh')
let buildcmd=expand('~/develop/connecttoremote/gotobuild.sh')
let shouldidocopy = 1
 
nnoremap <leader>cp :let shouldidocopy = 1<cr>
nnoremap <leader>sc :let shouldidocopy = 0<cr>
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
            let job_localfile = jobstart(['/bin/bash', '-c', g:scopycmd." ".localfile], {'callback': 'DoCallback'})
        endif
    else
    endif
    if !empty(localfile_other) && g:shouldidocopy == 1 
        let index_in_localfile_other = match(localfile_other, expand('~/develop/local/code/b.ebs'))
        if index_in_localfile_other != -1
            let job_localfile_other = jobstart(['/bin/bash', '-c', g:scopycmd." ".localfile_other], {'callback': 'DoCallback'})
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

"设置tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'  
let g:tagbar_right = 1
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_iconchars = ['▶', '▼']
nnoremap <silent> <leader>tb :TagbarToggle<cr>

let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : expand('~/.config/nvim/plugged/markdown2ctags/markdown2ctags.py'),
    \ 'ctagsargs' : '-f - --sort=yes ',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }
"let g:tagbar_sort = 1

"设置echodoc
set noshowmode
let g:echodoc#enable_at_startup = 1

"c++语法高亮
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

"设置leaderf
let g:Lf_Gtagsconf = '/usr/local/share/gtags/gtags.conf'
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'
"文件搜索
let g:Lf_ShortcutF = '<m-f>'
let g:Lf_ShortcutB = '<m-b>'
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
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0}

"设置signature
let g:SignatureIncludeMarks = 'abcdefghijklmnopqrstuvwxyABCDEFGHIJKLMNOPQRSTUVWXYZ'

"markdown配置
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_conceal=0
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_fenced_languages = ['csharp=cs']
let g:vim_markdown_toc_autofit = 1

let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
let g:mkdp_markdown_css=''
let g:mkdp_highlight_css=expand('~/.config/nvim/plugged/markdown-preview.nvim/highlight.js/src/styles/solarized-dark.css')
let g:mkdp_auto_close=1
let g:mkdp_echo_preview_url = 1

let g:vmt_auto_update_on_save = 0
let g:markdown_minlines = 100

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd Filetype markdown nnoremap <leader>ma :<c-u>MarkdownPreview<cr>
autocmd Filetype markdown nnoremap <leader>sm :<c-u>MarkdownPreviewStop<cr>

"设置默认储存文件夹.这里表示储存在当前文档所在文件夹下的'pic'文件夹下,相当于 ./pic/
let g:mdip_imgdir = '.' 
"设置默认图片名称.当图片名称没有给出时,使用默认图片名称
let g:mdip_imgname = ''
"设置快捷键
autocmd FileType markdown nnoremap <silent> <leader>mc :call mdip#MarkdownClipboardImage()<cr>F%i

"设置dirvish
function! s:setup_dirvish()
	if &buftype != 'nofile' && &filetype != 'dirvish'
		return
	endif
	if has('nvim')
		return
	endif
	"取得光标所在行的文（当前选中）
	let text = getline('.')
	"if ! get(g:, 'dirvish_hide_visible', 0)
		"exec 'silent keeppatterns g@\v[\/]\.[^\/]+[\/]?$@d _'
	"endif
	"排序文件名
    exec 'sort ,^.*[\/],'
	"定位到之前光标处的文件
    let name = '^' . escape(text, '.*[]~\') . '[/*|@=|\\*]\=\%($\|\s\+\)'
	call search(name, 'wc')
	noremap <silent><buffer> ~ :Dirvish ~<cr>
	noremap <buffer> % :e %
endfunc

augroup MyPluginSetup
	autocmd!
	autocmd FileType dirvish call s:setup_dirvish()
augroup END

augroup dirvish_config
  autocmd!
  "Map `gh` to hide dot-prefixed files.  Press `R` to "toggle"(reload).
  autocmd FileType dirvish nnoremap <silent><buffer> gh :<c-u>silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:<c-u>setl cole=3<cr>
augroup END
