let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! s:unicodemoji(line)
  exe "normal! i" . strcharpart(a:line, 0, 1) . "\<Esc>"
endfunction

command! -bang -nargs=0 Unicodemoji
  \ call fzf#vim#grep(
  \   s:path . '/unicodemoji --no-fzf', 0,
  \   {
  \     'options': ["--prompt", "> "],
  \     'sink': function('s:unicodemoji')
  \   },
  \   <bang>0
  \ )
