NeoBundle 'thinca/vim-localrc'

"" Perl config
autocmd BufNewFile,BufRead *.psgi set filetype=perl
autocmd BufNewFile,BufRead *.t    set filetype=perl
autocmd BufNewFile,BufRead *.tx   set filetype=html

autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl-script.txt

"http://hakobe932.hatenablog.com/entry/2014/01/21/214101
if !exists('g:neocomplcache_delimiter_patterns')
    let g:neocomplcache_delimiter_patterns = {}
endif
let g:neocomplcache_delimiter_patterns['perl'] = []

map ,pt <Esc>:%! perltidy -se<CR>
map ,ptv <Esc>:'<,'>! perltidy -se<CR>

function! s:pm_template()
    let path = substitute(expand('''), '.*lib/', '', ''')
    let path = substitute(path, '[\\/]', '::', ''')
    let path = substitute(path, '\.pm$', '', ''')

    call append(0, 'package ' . path . ''')
    call append(1, 'use strict;')
    call append(2, 'use warnings;')
    call append(3, 'use utf8;')
    call append(4, '')
    call append(5, '')
    call append(6, '')
    call append(7, '1;')
    call cursor(6, 0)
    " echomsg path
endfunction
autocmd BufNewFile *.pm call s:pm_template()
