" Load FZF from homebrew installation
set runtimepath^=/usr/local/opt/fzf
runtime plugin/fzf.vim

let $FZF_DEFAULT_OPTS='--layout=reverse'

let g:fzf_history_dir = '~/.fzf-history'
let g:fzf_buffers_jump = 1
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }
let g:fzf_tags_command = 'retag'

if has('nvim')
  let g:fzf_layout = { 'window': 'call user#fzf#window()' }
end

command! FZFMru call fzf#run(fzf#wrap('MRU', { 'source':  MRUfiles() }))
command! -bang -nargs=* Grep
      \ call fzf#vim#ag(
      \   <q-args>,
      \   <bang>0 ?
      \     fzf#vim#with_preview('up:60%') :
      \     fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0
      \ )

nnoremap <silent> <c-p> :FZF --tiebreak=begin,length,index<cr>
nnoremap <silent> <c-\> :FZFMru<cr>
nnoremap <silent> <c-n> :BLines<cr>
nnoremap <silent> <c-j> :BTags<cr>
nnoremap <silent> <c-k> :Buffers<cr>
nnoremap <silent> <c-y> :Ag<cr>
vnoremap <leader>as :<c-u>exec 'Grep '.text#get_visual()<cr>
nnoremap <leader>as :exec 'Grep '.expand('<cword>')<cr>

function! MRUfiles()
  let l:ignore = 'fugitive:\|^/tmp/\|.git/\|term:'
  let l:files = extend(
        \ filter(copy(v:oldfiles), { _, f -> f !~ l:ignore }),
        \ map(filter(range(1, bufnr('$')), { _, f -> buflisted(f) }), { _, f -> bufname(f) }))
  let l:pwd = getcwd()
  return filter(copy(l:files), { _, f -> f =~ l:pwd })
endfunction

aug user:autocmd:fzf
  au!
  if exists('#TermOpen')
    au TermOpen term://*FZF tnoremap <silent> <buffer> <nowait> <esc> <c-c><c-c><c-c><c-c>
  elseif exists('#TerminalOpen')
    au TerminalOpen term://*FZF tnoremap <silent> <buffer> <nowait> <esc> <c-c><c-c><c-c><c-c>
  end

  au User FzfStatusLine call statusline#fzf#()
  au BufLeave *FZF q!
  au FileType fzf set signcolumn=no
aug END
