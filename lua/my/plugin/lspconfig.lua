local lspconfig = require'lspconfig'
local lsp = vim.lsp
local utils = require'my/utils'

local keymap = function(lhs, rhs)
  utils.lua_buf_keymap(0, 'n', lhs, rhs)
end

local function attacher(client)
  keymap('gd', 'vim.lsp.buf.definition()')
  keymap('K', 'vim.lsp.buf.hover()')
  keymap('<leader>ee', 'vim.lsp.diagnostic.show_line_diagnostics()')
  keymap('<leader>ea', 'vim.lsp.diagnostic.set_loclist()')

  require'completion'.on_attach()

  print('LSP: ' .. client.name)
end

lsp.handlers["textDocument/publishDiagnostics"] = lsp.with(
  lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)

lspconfig.vimls.setup{ on_attach = attacher }
lspconfig.jsonls.setup{ on_attach = attacher }
lspconfig.cssls.setup{ on_attach = attacher }

lspconfig.solargraph.setup{
  settings = {
    solargraph = {
      filetypes = {'ruby'},
      root_dir = {'.'},
      completion = true,
      symbols = true,

      definitions = false,
      diagnostics = false,
      hover = false,
      references = false,
      rename = false,
      useBundler = false
    }
  },
  on_attach = attacher
}

lspconfig.diagnosticls.setup{
  filetypes = {
    'markdown',
    'ruby',
    'sh',
    'yaml'
  },

  init_options = {
    linters = {
      rubocop = {
        command = 'bundle',
        sourceName = 'rubocop',
        args = {
          'exec',
          'rubocop',
          '--format',
          'json',
          '--force-exclusion',
          '%filepath'
        },
        parseJson = {
          errorsRoot = 'files[0].offenses',
          line = 'location.line',
          column = 'location.column',
          message = '[${cop_name}]\n${message}',
          security = 'severity'
        },
        securities = {
          fatal = 'error',
          warning = 'warning'
        }
      },
      markdownlint = {
        command = 'markdownlint',
        sourceName = 'markdownlint',
        isStderr = true,
        args = {
          '--config',
          '.markdownlint.json',
          '%filepath'
        },
        formatLines = 1,
        formatPattern = {
          '^([^:]+):(\\d+):(\\d+)?\\s*(.*)$',
          {
            sourceName = 1,
            sourceNameFilter = true,
            line = 2,
            column = 3,
            message = 4,
          }
        },
        securities = {
          undefined = 'warning'
        }
      },
      shellcheck = {
        command = 'shellcheck',
        debounce = 100,
        args = {
          '--format',
          'json',
          '-'
        },
        sourceName = 'shellcheck',
        parseJson = {
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '${message} [${code}]',
          security = 'level'
        },
        securities = {
          error = 'error',
          warning = 'warning',
          info = 'info',
          style = 'hint'
        }
      },
    },

    filetypes = {
      markdown = 'markdownlint',
      ruby = 'rubocop',
      sh = 'shellcheck',
    }
  },
  on_attach = attacher
}