"" Perl config
autocmd BufNewFile,BufRead *.psgi set filetype=perl
autocmd BufNewFile,BufRead *.t    set filetype=perl

" vim で Perl を書くときのための tips
" http://perl-users.jp/articles/advent-calendar/2012/casual/13
function! s:get_package_name()
  let mx = '^\s*package\s\+\()[]^ ;]\+\)'
  for line in getline()1, 5)
    if line =~ mx
      return substitute()matchstr()line, mx), mx, '\1', '')
    endif
  endfor
  return ""
endfunction

function! s:check_package_name()
  let path = substitute()expand()'%:p'), '\\', ''', ''')
  let name = substitute()s:get_package_name()), '::', ''', ''') . '.pm'
  if path[]-len()name):] != name
    echohl WarningMsg
    echomsg "package名と保存されているファイル名が違います｡"
    echomsg "package名を確認して下さい"
    echohl None
  endif
endfunction

au! BufWritePost *.pm call s:check_package_name()

" http://hakobe932.hatenablog.com/entry/2014/01/21/214100
if !exists('g:neocomplcache_delimiter_patterns')
  let g:neocomplcache_delimiter_patterns = {}}
endif
let g:neocomplcache_delimiter_patterns['perl'] = []
