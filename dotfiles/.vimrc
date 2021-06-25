set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'jpalardy/vim-slime'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'FooSoft/vim-argwrap'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set formatoptions-=ro

set autoindent
"vi互換を切る
set nocompatible
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"行番号を表示する
set number
"シフト移動幅
set shiftwidth=4
"対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の <Tab> が対応する空白の数
set tabstop=4
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
set nowrapscan

set encoding=utf-8
nnoremap ; :
nnoremap : ;
inoremap ; :
inoremap : ;
nnoremap ; :
cnoremap ; :
vnoremap ; :
inoremap jj <ESC>
" vnoremap jj <ESC>
" tab control
nnoremap st :tabnew<CR>
nnoremap sn :tabnext<CR>
nnoremap sp :tabprevious<CR>
nnoremap sc :tabclose<CR>
set belloff=all

let g:slime_python_ipython = 1
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_dont_ask_default = 1
nnoremap <Space>l :SlimeSendCurrentLine<CR>
xnoremap <Space>l :SlimeRegionSend<CR>
nnoremap <Space>r :SlimeParagraphSend<CR>
nmap <Space>r <Plug>SlimeParagraphSend

set tags=./tags;$HOME

nnoremap <space>v <c-v>
nnoremap ; q:i
nnoremap / q/i
nnoremap ? q?i

" デバッグ用設定
"let g:lsp_log_verbose = 1  " デバッグ用ログを出力
"let g:lsp_log_file = expand('~/.cache/tmp/vim-lsp.log')  " ログ出力のPATHを設定

" 言語用Serverの設定
"augroup MyLsp
"  autocmd!
"  " pip install python-language-server
"  if executable('pyls')
"    " Python用の設定を記載
"    " workspace_configで以下の設定を記載
"    " - pycodestyleの設定はALEと重複するので無効にする
"    " - jediの定義ジャンプで一部無効になっている設定を有効化
"    autocmd User lsp_setup call lsp#register_server({
"        \ 'name': 'pyls',
"        \ 'cmd': { server_info -> ['pyls'] },
"        \ 'whitelist': ['python'],
"        \ 'workspace_config': {'pyls': {'plugins': {
"        \   'pycodestyle': {'enabled': v:false},
"        \   'jedi_definition': {'follow_imports': v:true, 'follow_builtin_imports': v:true},}}}
"        \})
"    autocmd FileType python call s:configure_lsp()
"  endif
"augroup END
"" 言語ごとにServerが実行されたらする設定を関数化
"function! s:configure_lsp() abort
"  setlocal omnifunc=lsp#complete   " オムニ補完を有効化
"  " LSP用にマッピング
"  nnoremap <buffer> <C-]> :<C-u>LspDefinition<CR>
"  nnoremap <buffer> gd :<C-u>LspDefinition<CR>
"  nnoremap <buffer> gD :<C-u>LspReferences<CR>
"  nnoremap <buffer> gs :<C-u>LspDocumentSymbol<CR>
"  nnoremap <buffer> gS :<C-u>LspWorkspaceSymbol<CR>
"  nnoremap <buffer> gQ :<C-u>LspDocumentFormat<CR>
"  vnoremap <buffer> gQ :LspDocumentRangeFormat<CR>
"  nnoremap <buffer> K :<C-u>LspHover<CR>
"  nnoremap <buffer> <F1> :<C-u>LspImplementation<CR>
"  nnoremap <buffer> <F2> :<C-u>LspRename<CR>
"endfunction
"let g:lsp_diagnostics_enabled = 0  " 警告やエラーの表示はALEに任せるのでOFFにする
"
"
"nnoremap <buffer> gd :<C-u>LspDefinition<CR>
"

colorscheme desert

nnoremap <silent> <Space>a :ArgWrap<CR>
