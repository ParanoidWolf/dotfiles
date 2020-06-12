" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

call plug#begin('~/.config/nvim/plugged')

Plug 'git://github.com/jiangmiao/auto-pairs.git'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'

call plug#end()

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
if has('nvim')
	let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
else
	let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
endif
