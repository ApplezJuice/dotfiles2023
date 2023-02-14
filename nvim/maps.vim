" Description: Keymaps

nnoremap <silent><CR> :noh<CR><CR> 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" PLUGIN: FZF
nnoremap <silent> ;f <cmd>Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :Rg<CR>

nmap <silent> <Leader><C-n> :call Spawn_note_window() <CR>
