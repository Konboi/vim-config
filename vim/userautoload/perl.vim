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
