python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

execute pathogen#infect()

let g:ctrlp_show_hidden=1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:solarized_termtran=1

set background=dark
colorscheme solarized
