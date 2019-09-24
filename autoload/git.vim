function! git#restore(...) abort
  if a:0 && (a:1 ==# '%' || a:1 ==# '')
    exec '!git restore ' . expand('%:p')
  else
    exec '!git restore ' . a:1
  end
  edit
endfunction

function! git#remote()
  let l:file = expand('%')
  let l:branch = trim(system('git symbolic-ref --short HEAD'))
  let l:remote = trim(system('git remote get-url origin'))
  let l:remote = substitute(l:remote, '^git@', 'https://', '')
  let l:remote = substitute(l:remote, '\.git$', '', '')

  let l:url = printf('%s/blob/%s/%s', l:remote, l:branch, l:file)

  call system(printf('open %s', l:url))
endfunction
