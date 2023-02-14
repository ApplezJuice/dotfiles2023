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

" LSP / CMP "{{{
" ---------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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

" Extras "{{{
" ---------------------------------------------------------------------
function! Spawn_note_window() abort
  let path = "~/notes/"
  let file_name = path.strftime("note-%m-%y.txt")
  " Empty buffer
  let buf = nvim_create_buf(v:false, v:true)
  " Get current UI
  let ui = nvim_list_uis()[0]
  " Dimension
  let width = (ui.width/2)
  let height = (ui.height/2)
  " Options for new window
  let opts = {'relative': 'editor',
              \ 'width': width,
              \ 'height': height,
              \ 'col': (ui.width - width)/2,
              \ 'row': (ui.height - height)/2,
              \ 'anchor': 'NW',
              \ 'style': 'minimal',
              \ 'border': 'single',
              \ }
  " Spawn window
  let win = nvim_open_win(buf, 1, opts)
  " Now we can actually open or create the note for the day?
  if filereadable(expand(file_name))
    execute "e ".fnameescape(file_name)
    let column = 80
    execute "set textwidth=".column
    execute "set colorcolumn=".column
    execute "norm Go"
    execute "norm zz"
    execute "startinsert"
  else
    execute "e ".fnameescape(file_name)
    let column = 80
    execute "set textwidth=".column
    execute "set colorcolumn=".column
    execute "norm Gi= Notes for ".strftime("%m-%y")." ="
    execute "norm G2o"
    execute "norm Gi- " 
    execute "norm zz"
    execute "startinsert"
  endif
endfunction
