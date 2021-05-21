set nocompatible
filetype off 

set number
set expandtab
set tabstop=4
set mouse=a
let python_highlight_all=1
syntax on
set hlsearch
set scrolloff=35

set cursorcolumn
set cursorline
set background = "light"
set clipboard=unnamedplus

let g:NERDTreeWinSize=60

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-tslint-plugin' ]

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

nmap <silent> gd <Plug>(coc-definition)
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugin 'Shougo/deoplete.nvim'
"Plugin 'jaxbot/github-issues.vim'
Plugin 'vim-syntastic/syntastic'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'leafgarland/typescript-vim'
Plugin 'fannheyward/coc-pyright'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'pangloss/vim-javascript'   
Plugin 'maxmellon/vim-jsx-pretty'  
Plugin 'neoclide/coc.nvim'  
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'sheerun/vim-polyglot'
Plugin 'pineapplegiant/spaceduck'
Plugin 'kyazdani42/nvim-web-devicons'
Plugin 'romgrk/barbar.nvim'

call vundle#end()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

if exists('+termguicolors')
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
endif

colorscheme spaceduck
   
filetype plugin indent on

" Transparent editing of gpg encrypted files.
augroup encrypted
au!
" First make sure nothing is written to ~/.viminfo while editing
" an encrypted file.
autocmd BufReadPre,FileReadPre      *.gpg set viminfo=
" We don't want a swap file, as it writes unencrypted data to disk
autocmd BufReadPre,FileReadPre      *.gpg set noswapfile
" Switch to binary mode to read the encrypted file
autocmd BufReadPre,FileReadPre      *.gpg set bin
autocmd BufReadPre,FileReadPre      *.gpg let ch_save = &ch|set ch=2
autocmd BufReadPre,FileReadPre      *.gpg let shsave=&sh
autocmd BufReadPre,FileReadPre      *.gpg let &sh='sh'
autocmd BufReadPre,FileReadPre      *.gpg let ch_save = &ch|set ch=2
autocmd BufReadPost,FileReadPost    *.gpg '[,']!gpg --decrypt --default-recipient-self 2> /dev/null
autocmd BufReadPost,FileReadPost    *.gpg let &sh=shsave
" Switch to normal mode for editing
autocmd BufReadPost,FileReadPost    *.gpg set nobin
autocmd BufReadPost,FileReadPost    *.gpg let &ch = ch_save|unlet ch_save
autocmd BufReadPost,FileReadPost    *.gpg execute ":doautocmd BufReadPost " . expand("%:r")
" Convert all text to encrypted text before writing
autocmd BufWritePre,FileWritePre    *.gpg set bin
autocmd BufWritePre,FileWritePre    *.gpg let shsave=&sh
autocmd BufWritePre,FileWritePre    *.gpg let &sh='sh'
autocmd BufWritePre,FileWritePre    *.gpg '[,']!gpg --encrypt --default-recipient-self 2>/dev/null
autocmd BufWritePre,FileWritePre    *.gpg let &sh=shsave
" Undo the encryption so we are back in the normal text, directly
" after the file has been written.
autocmd BufWritePost,FileWritePost  *.gpg silent u
autocmd BufWritePost,FileWritePost  *.gpg set nobin
augroup END

" autocmd VimLeave * call system('printf "\e[2 q" > $TTY')
autocmd VimLeave * set guicursor=a:ibeam-blinkon0

