""""""""""""""""""""""""""""""""""""""""""""""
" Project:      words-frontend
" When:         after session is loaded
" Variables:    $vim_project, $vim_project_config
" Example:      to open `./src` on start
" - edit $vim_project/src
""""""""""""""""""""""""""""""""""""""""""""""

let g:vim_project_local_config = {
      \'find_in_files_exclude': ['.git', 'node_modules', 'package-lock.json', 'dist'],
      \}
