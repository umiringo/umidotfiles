set nocompatible " 关闭兼容功能，不会适应vi了，所谓的be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'L9'

Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'vim-scripts/a.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
" Plugin 'Valloric/YouCompleteMe'

" NERDTree configure
nnoremap <silent><F2> :NERDTreeToggle<cr>
imap <F2> <Esc>:NERDTreeToggle<cr>
let NERDTreeIgnore=['\.o$', '\.ko$', '\.symvers$', '\.order$', '\.mod.c$', '\.swp$', '\.bak$', '\~$', '\.pyc$', '\.pyo$']
let NERDTreeSortOrder=['\/$', 'Makefile', 'makefile', '\.c$', '\.cc$', '\.cpp$', '\.h$', '*', '\~$']
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1

" Airline configure
let g:airline#extensions#tagbar#enabled = 1

" Toggle configure
nmap <F3> :TagbarToggle<CR>

" indentLine configure
let g:indentLine_char = '│'
let g:indentLine_color_term = 239

" easymotion configure
let g:EasyMotion_leader_key='f'

" ctrlp configure
let g:ctrlp_map = '<F4>'
let g:ctrlp_cmd = 'CtrlP'

" ctrlsf configure
nmap <F5> <Plug>CtrlSFPrompt

" YouCompleteMe configure
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm'
set completeopt=longest,menu
inoremap <expr> <space>       pumvisible() ? "\<C-y>" : "\<space>"
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntastic configure
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_balloons = 1


call vundle#end()            " required
filetype plugin indent on    " required
