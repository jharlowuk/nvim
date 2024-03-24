return {
  "AstroNvim/astrocommunity",
  lazy = false, -- ensures mappings/options always work

  -- git
  {
    import = 'astrocommunity.git.octo-nvim',
    opts = {
      mappings = {
        vim.keymap.set("i", "@", "@<C-x><C-o>", { silent = true, buffer = true }),
        vim.keymap.set("i", "#", "#<C-x><C-o>", { silent = true, buffer = true })
      },
    }
  },

  -- editing support
  { import = 'astrocommunity.editing-support.refactoring-nvim' },
  { import = 'astrocommunity.editing-support.neogen' },
  { import = 'astrocommunity.editing-support.nvim-devdocs' },
  
  -- lsp
  { import = 'astrocommunity.lsp.lsp-signature-nvim' },
  { import = 'astrocommunity.lsp.lsp-inlayhints-nvim' },

  -- motions
  { import = 'astrocommunity.motion.nvim-surround' },
  { import = 'astrocommunity.motion.leap-nvim' },
  { import = 'astrocommunity.motion.flit-nvim' },

  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  { -- further customize copilot
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-l>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>"
        }
      },
    },
  },

  -- debugging
  { import = 'astrocommunity.debugging.nvim-bqf' },

  -- utility
  { import = 'astrocommunity.utility.telescope-live-grep-args-nvim' },

  -- packs
  { import = 'astrocommunity.pack.bash' },
  { import = 'astrocommunity.pack.typescript' },
  { import = 'astrocommunity.pack.rust' },
  { import = 'astrocommunity.pack.python' },
  { import = 'astrocommunity.pack.json' },
  { import = 'astrocommunity.pack.markdown' },

  -- markdown and latext
  { import = 'astrocommunity.markdown-and-latex.glow-nvim' },

  -- workflow
  { import = 'astrocommunity.workflow.hardtime-nvim' },
}
