
execute pathogen#infect()

set noshowmode

set expandtab
set softtabstop=2
set shiftwidth=2

set list listchars=tab:»-,trail:·

set directory=~/.vim/swp//

set autoread
au FocusGained * :checktime
au BufEnter * :checktime
au CursorHold * :checktime
au CursorHoldI * :checktime

let g:solarized_termtrans=1

set background=dark
colorscheme solarized
let g:lightline = { 'colorscheme': 'solarized' }

let g:hardtime_default_on = 1

set rtp+=/usr/local/src/fzf
nnoremap <silent> <C-p> :Files<cr>
nnoremap <silent> <C-b> :Buffers<cr>
nnoremap <silent> <C-f> :BLines<cr>
let g:fzf_layout = { 'down': '40%' }
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
