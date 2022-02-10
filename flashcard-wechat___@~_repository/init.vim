""""""""""""""""""""""""""""""""""""""""""""""
" Project:      flashcard-wechat
" When:         after session is loaded
" Variables:    $vim_project, $vim_project_config
" Example:      to open `./src/index.html` on start
" - edit $vim_project/src/index.html
""""""""""""""""""""""""""""""""""""""""""""""

let g:vim_project_local_config = {
\}

let g:vim_project_local_config.file_map = {
      \'direct': {
      \   'file': [],
      \   'key': [],
      \},
      \'link': {
      \   'file': ['wxml', 'js'],
      \   'key': 'l',
      \},
      \}
