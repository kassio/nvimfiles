" NERDTree
let g:NERDTreeWinPos="right"
let NERDTreeHighlightCursorline=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeStatusline="%{MyNERDTreeStatusLine()}"

function! MyNERDTreeStatusLine()
  let current_line = getline('.')
  return tlib#string#Strip(current_line)
endfunction


function! MyNERDTreeOpen()
  exec "NERDTreeToggle \| :silent NERDTreeMirror"

  if (match(bufname(''), '^NERD_tree.*') == 0) && (len(getline(0,'$')) <= 1)
    exec "NERDTree"
  endif
endfunction

nmap <silent> <leader>p :call MyNERDTreeOpen()<CR>
nnoremap <silent> <leader>fl :NERDTreeFind<CR>
command! E exec ":NERDTree ".expand('%:p')
