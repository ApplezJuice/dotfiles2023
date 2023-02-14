" Fundamentals "{{{
" ---------------------------------------------------------------------
autocmd!
scriptencoding utf-8
set nocompatible
set number
set relativenumber
set title
set showcmd
set backupskip=/tmp/*,/private/tmp/*
set expandtab
set autoindent
set nobackup
" Ignore case when searching
set ignorecase
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow
" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste
set clipboard=unnamedplus

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
runtime ./maps.vim

" Syntax theme "{{{
" ---------------------------------------------------------------------
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  colorscheme tokyonight
  hi! Normal ctermbg=NONE guibg=NONE
endif


" FZF "{{{
" ---------------------------------------------------------------------
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-b': 'vsplit',
  \ 'ctrl-o': ':r !echo',
  \ }
"Quick ripgrep word under cursor
command! -bang -nargs=0 RgCWord
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(expand('<cword>')), 1,
  \   fzf#vim#with_preview(), <bang>0)

nnoremap <C-g> :RgCWord<CR>
