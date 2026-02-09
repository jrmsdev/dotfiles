" jrmsdev/dotfiles .vimrc

" terraform file detect
au BufRead,BufNewFile *.tf set filetype=terraform
au BufRead,BufNewFile *.tfvars set filetype=terraform

" environment file detect
au BufRead,BufNewFile environment set filetype=sh

syntax on
filetype plugin indent on

set bg=dark

"colorscheme default
"colorscheme desert
"colorscheme ron
"colorscheme elflord
"colorscheme sorbet
colorscheme wildcharm


set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
"set smartindent
