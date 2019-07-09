
execute pathogen#infect()

set noshowmode

set expandtab
set softtabstop=2
set shiftwidth=2

set directory=~/.vim/swp//

let g:solarized_termtrans=1

set background=dark
colorscheme solarized

let g:hardtime_default_on = 1

set rtp+=/usr/local/src/fzf
nnoremap <silent> <C-p> :Files<cr>
nnoremap <silent> <C-b> :Buffers<cr>
nnoremap <silent> <C-f> :BLines<cr>

