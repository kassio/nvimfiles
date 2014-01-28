" Cloned from https://github.com/rafaelfranca/vimfiles
function! GitEmailAlert()
  if !exists("g:gitemail_alert")
    let s:email = system("git config --local --get user.email")

    if s:email == ''
      let g:gitemail_alert = ' [Configure git local email] '
    else
      let g:gitemail_alert = ''
    endif
  endif

  return g:gitemail_alert
endfunction
