" plugin/colorscheme.vim

let s:colorscheme = 'default'
if has('nvim')
  if dko#IsPlugged('Base2Tone-vim')
    let g:base16colorspace=256
    silent! colorscheme Base2Tone-Lake-dark
    set background=dark

  elseif dko#IsPlugged('gruvbox')
    let g:gruvbox_contrast_dark      = 'hard'
    let g:gruvbox_contrast_light     = 'hard'
    let g:gruvbox_italic             = 1
    let g:gruvbox_italicize_comments = 1
    let g:gruvbox_invert_selection   = 0
    if &t_Co != 256
      let g:gruvbox_termcolors = 16
    endif
    silent! colorscheme gruvbox
    set background=dark

  endif
else
  silent! colorscheme darkblue

endif
