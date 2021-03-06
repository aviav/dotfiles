" Easy window navigation
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

" Remap indentation
vmap > >gv
vmap < <gv
vmap <Tab> >gv
vmap <S-Tab> <gv
inoremap <c-space> <c-n>

nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

" Easy tag navigation with <CR> and <BS>
"nmap <CR> <C-]>
nmap <BS> <C-T>

" Map personal hotkeys
nmap <leader>l :set list!<CR>
nmap <leader>n :set number!<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nmap <Leader>m :make<CR>
inoremap <C-v> <ESC>:VimuxRunLastCommand<CR>
nmap <leader>f :w\|Freload<CR>

" Setup mappings for ruby-debugger.
nmap <leader>db <plug>ruby_debugger_breakpoint
nmap <leader>dv <plug>ruby_debugger_open_variables
nmap <leader>dm <plug>ruby_debugger_open_breakpoints
nmap <leader>dt <plug>ruby_debugger_open_frames
nmap <leader>ds <plug>ruby_debugger_step
nmap <leader>df <plug>ruby_debugger_finish
nmap <leader>dn <plug>ruby_debugger_next
nmap <leader>dc <plug>ruby_debugger_continue
nmap <leader>de <plug>ruby_debugger_exit
nmap <leader>dd <plug>ruby_debugger_remove_breakpoints

nmap <leader>rs :silent Rserver!<CR>:redraw!<CR>
nmap <leader>rd :Rdebugger 'script/rails s'<CR>
nmap <leader>p :Pry<CR>

" Rspec.vim mappings
map <Leader>sf :call RunCurrentSpecFile()<CR>
map <Leader>ss :call RunNearestSpec()<CR>
map <Leader>sl :call RunLastSpec()<CR>
map <Leader>sa :call RunAllSpecs()<CR>

" Setup mapping for switch.vim
nnoremap - :Switch<cr>

" Setup mapping for xmpfilter from rcodetools
autocmd FileType ruby nmap <buffer> <leader>xa <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <leader>xa <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <leader>xa <Plug>(xmpfilter-run)

autocmd FileType ruby nmap <buffer> <leader>xm <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <leader>xm <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <leader>xm <Plug>(xmpfilter-mark)
autocmd FileType ruby nmap <buffer> <leader>xx ,xm,xa<CR>
