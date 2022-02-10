""""""""""""""""""""""""""""""""""""""""""""""
" Project:      vim-project
" When:         after session is loaded
" Variables:    $vim_project, $vim_project_config
" Example:      to open `./src` on start
" - edit $vim_project/src
""""""""""""""""""""""""""""""""""""""""""""""

let g:vim_project_local_config = {
      \'file_map': {
          \'direct': {
          \   'file': ['autoload/project.vim', 'README.md'],
          \   'key': ['a', 'd'],
          \},
      \},
      \}
