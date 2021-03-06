local telescope = require'telescope'
local actions = require'telescope.actions'
local sorters = require'telescope.sorters'
local previewers = require'telescope.previewers'
local builtin = require'telescope.builtin'

telescope.load_extension'fzy_native'

telescope.setup{
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  },
  defaults = {
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-u>'] = { "<c-u>", type = "command" }
      }
    },
    layout_config = {
      prompt_position = 'top',
    },
    prompt_prefix = '› ',
    selection_caret = '› ',
    set_env = { ['COLORTERM'] = 'truecolor' },
    sorting_strategy = 'ascending',
    winblend = 0
  }
}

vim.my.fuzzyfinder = {
  find_files = function(opts)
    local opts = opts or {}
    builtin.find_files(vim.tbl_extend('keep', opts, {
      find_command = { 'files' }
    }))
  end,
  grep_string = builtin.grep_string,
  live_grep = builtin.live_grep,
  buffers = builtin.buffers,
  current_buffer_fuzzy_find = function(opts)
    builtin.current_buffer_fuzzy_find(require'telescope.themes'.get_dropdown())
  end,
  highlights = builtin.highlights,
  lsp_document_symbols = function(opts)
    builtin.lsp_document_symbols(require'telescope.themes'.get_dropdown())
  end,
  lsp_workspace_symbols = builtin.lsp_workspace_symbols,
  oldfiles = builtin.oldfiles
}
