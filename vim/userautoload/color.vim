"" Color Setting
NeoBundle 'w0ng/vim-hybrid'
"color scheme
colorscheme hybrid

"" lightline
NeoBundle 'itchyny/lightline.vim'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


"" Hightlight Tail space
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

"" vim-over
NeoBundle "osyo-manga/vim-over"


