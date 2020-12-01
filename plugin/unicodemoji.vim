let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! s:unicodemoji(line)
  call feedkeys("i")
  call feedkeys(strcharpart(a:line, 0, 1))
  call feedkeys(" ")
  call feedkeys("\<Esc>")
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
