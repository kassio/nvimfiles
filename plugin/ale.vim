scriptencoding = 'utf8'

let g:sign_error = '×'
let g:sign_warning = '⚠'
let g:sign_info = 'ⅰ'

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = g:sign_error
let g:ale_sign_style_error = 's'
let g:ale_sign_warning = g:sign_warning
let g:ale_sign_style_warning = 's'
let g:ale_sign_info = g:sign_info

let g:ale_linters = {
      \ 'go': ['gofmt', 'golint'],
      \ 'javascript': ['standard'],
      \ 'ruby': ['standardrb'],
      \ 'sh': ['shellcheck'],
      \}

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'css': ['prettier'],
      \ 'elixir': ['mix_format'],
      \ 'go': ['gofmt'],
      \ 'javascript': ['standard'],
      \ 'json': ['prettier'],
      \ 'ruby': ['standardrb'],
      \ 'sh': ['shfmt']
      \ }

let g:ale_sh_shfmt_options = '-i 2 -ci -sr'

if getcwd() =~# expand('$HOME/src/rails')
  let g:ale_fixers['ruby'] = []
end

" Lint signs
nnoremap <leader>ln :ALENextWrap<cr>
nnoremap <leader>lp :ALEPreviousWrap<cr>
