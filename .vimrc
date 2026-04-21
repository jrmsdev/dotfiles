" jrmsdev/dotfiles .vimrc

"Svelte TypeScript files detect
au BufRead,BufNewFile *.svelte set filetype=typescript

" terraform file detect
au BufRead,BufNewFile *.tf set filetype=terraform
au BufRead,BufNewFile *.tfvars set filetype=terraform

" environment file detect
au BufRead,BufNewFile environment set filetype=sh

syntax on
filetype plugin indent on

" in ms
set redrawtime=10000

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
