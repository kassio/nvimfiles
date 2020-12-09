let g:completion_matching_smart_case = 1
let g:completion_auto_change_source = 1
let g:completion_sorting = "alphabet"
let g:completion_matching_strategy_list = [
      \ 'exact',
      \ 'substring'
      \ ]
let g:completion_chain_complete_list = {
      \ 'default': [
      \    {'complete_items': ['lsp', 'ts', 'UltiSnips']},
      \    {'complete_items': ['buffers', 'path']},
      \    {'mode': '<c-p>'},
      \    {'mode': '<c-n>'}
      \  ]}

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" aug user:completion
"   autocmd!
"   autocmd BufEnter * lua require'completion'.on_attach()
" aug END
