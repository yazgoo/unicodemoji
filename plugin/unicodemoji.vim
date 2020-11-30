function! s:unicodemoji(line)
  exe "normal! i" . strcharpart(a:line, 0, 1) . "\<Esc>"
endfunction

command! -bang -nargs=0 Unicodemoji
  \ call fzf#vim#grep(
  \   'unicodemoji --no-fzf', 0,
  \   {
  \     'options': ["--prompt", "> "],
  \     'sink': function('s:unicodemoji')
  \   },
  \   <bang>0
  \ )
