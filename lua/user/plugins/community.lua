return {
    "AstroNvim/astrocommunity",
    -- git
    { import = 'astrocommunity.git.octo-nvim' },

    -- editing support
    { import = 'astrocommunity.editing-support.refactoring-nvim' },

    -- motions
    { import = 'astrocommunity.motion.nvim-surround' },
    { import = 'astrocommunity.motion.leap-nvim' },

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
  }