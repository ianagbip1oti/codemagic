
execute pathogen#infect()

set noshowmode

set expandtab
set softtabstop=2
set shiftwidth=2

set directory=~/.vim/swp//

let g:ctrlp_show_hidden=1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore .git -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:solarized_termtrans=1

set background=dark
colorscheme solarized

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'gutentags', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gutentags': 'gutentags#statusline'
      \ },
      \ }

let g:hardtime_default_on = 1

nnoremap [b :call g:TagbarOpen()<CR>
nnoremap ]b :call g:TagbarClose()<CR>

g:gutentags_ctags_tagfile=.git/tags
