""""""""""""""""""""""""""""""""""""""""""""""
" Project:      words-server
" When:         after session is loaded
" Variables:    $vim_project, $vim_project_config
" Example:      to open `./src` on start
" - edit $vim_project/src
""""""""""""""""""""""""""""""""""""""""""""""

let g:vim_project_local_config = {
  \'search_include': ['./'],
  \'search_exclude': ['.git', 'node_modules', 'dist', 'download'],
  \'find_in_files_include': [],
  \'find_in_files_exclude': ['.git', 'node_modules', 'dist', 'download'],
  \'project_entry': './src',
  \}
