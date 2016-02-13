" plugin/plug-vim-gutentags.vim
if !exists("g:plugs['vim-gutentags']") | finish | endif

let g:gutentags_tagfile = '.git/tags'

" Toggle :GutentagsToggleEnabled to enable
let g:gutentags_enabled                  = 0

let g:gutentags_define_advanced_commands = 1
let g:gutentags_resolve_symlinks         = 1

" Use this in lieu of project local .gutctags
if filereadable(glob('$DOTFILES/ctags/ctags'))
  let g:gutentags_ctags_executable = 'ctags --options="$DOTFILES/ctags/ctags"'
endif

