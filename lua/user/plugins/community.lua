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

  -- motions
  { import = 'astrocommunity.motion.nvim-surround' },
  { import = 'astrocommunity.motion.leap-nvim' },
  { import = 'astrocommunity.motion.flit-nvim' },

  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  { -- further customize the options set by the community
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
  { import = 'astrocommunity.pack.typescript' },
  { import = 'astrocommunity.pack.rust' },
  { import = 'astrocommunity.pack.python' },
  { import = 'astrocommunity.pack.json' },

  -- workflow
  { import = 'astrocommunity.workflow.hardtime-nvim' },
}
