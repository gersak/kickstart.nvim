return {
  { 'jose-elias-alvarez/null-ls.nvim', enabled = false },
  {
    'nvimtools/none-ls.nvim',
    opts = function(_, opts)
      local nls = require 'null-ls' -- it's called null-ls internally
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.markdownlint,
        nls.builtins.completion.luasnip,
        -- clojure
        nls.builtins.diagnostics.clj_kondo,
        -- nls.builtins.formatting.cljstyle,
        -- nls.builtins.formatting.zprint
      })
      return opts
    end,
    keys = {
      { '<leader>fe', vim.lsp.buf.format },
    },
  },
}
