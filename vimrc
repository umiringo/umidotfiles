source ~/.vim/bundles.vim
set nu
set laststatus=2
set autoindent
set smartindent
set filetype=cpp
syntax enable
colorscheme monokai
set history=50
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showmatch
set ruler
set ignorecase
set hls
set helplang=cn
set foldenable              " 开端折叠
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldlevelstart=99       " 打开文件是默认不折叠代码

au BufNewFile,BufRead *.hrp set filetype=cpp
set fileencodings=utf-8,gbk
let g:agprg="<custom-ag-path-goes-here> --column"


set cursorline
let mapleader=","

