local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "eslint_d",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "svelte" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettierd",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "svelte" }
  },
  {
    command = "yamlfmt",
    filetypes = { "yaml" }
  },
  {
    command = "sql-formatter",
    filetypes = { "sql" }
  },
  {
    command = "beautysh",
  }
}

--indent-size INDENT_SIZE, -i INDENT_SIZE
-- Sets the number of spaces to be used in indentation.
--backup, -b          Beautysh will create a backup file in the same path as
-- the original.
--check, -c           Beautysh will just check the files without doing any
-- in-place beautify.
--tab, -t             Sets indentation to tabs instead of spaces.
--force-function-style FORCE_FUNCTION_STYLE, -s FORCE_FUNCTION_STYLE
-- Force a specific Bash function formatting. See below
-- for more info.
--version, -v         Prints the version and exits.
--help, -h            Print this help message.
