return {
  {
    "ThePrimeagen/refactoring.nvim",
    keys = {
      {
        "<leader>r",
        function()
          require("refactoring").select_refactor({})
        end,
        mode = "v",
        noremap = true,
        silent = true,
        expr = false,
      },
    },
    opts = {},
  },

  -- Go forward/backward with square brackets
  {
    "nvim-mini/mini.bracketed", 
    event = "BufReadPost",
    config = function()
      local bracketed = require("mini.bracketed")
      bracketed.setup({
        file = { suffix = "" },
        window = { suffix = "" },
        quickfix = { suffix = "" },
        yank = { suffix = "" },
        treesitter = { suffix = "n" },
      })
    end,
  },

  {
    {
      "f-person/git-blame.nvim",  -- falta esse
      event = "VeryLazy",
      opts = {
        enabled = true,
        message_template = " <summary> • <date> • <author> • <<sha>>",
        date_format = "%m-%d-%Y %H:%M:%S",
        virtual_text_column = 1,
      },
      keys = {
        {
          "<leader>gbu",
          "<cmd>GitBlameToggle<cr>",
          desc = "toggle git blame",
        },
        {
          "<leader>gbe",
          "<cmd>GitBlameEnable<cr>",
          desc = "enable git blame",
        },
        {
          "<leader>gbd",
          "<cmd>GitBlameDisable<cr>",
          desc = "disable git blame",
        },
        {
          "<leader>gbh",
          "<cmd>GitBlameCopySHA<cr>",
          desc = "copy line commit SHA",
        },
        {
          "<leader>gbl",
          "<cmd>GitBlameCopyCommitURL<cr>",
          desc = "copy line commit URL",
        },
        {
          "<leader>gbo",
          "<cmd>GitBlameOpenFileURL<cr>",
          desc = "opens file in default browser",
        },
        {
          "<leader>gbc",
          "<cmd>GitBlameCopyFileURL<cr>",
          desc = "copy file url to clipboard",
        },
      },
    },
  },

  {
    "folke/which-key.nvim",  -- falta esse
    opts = {
      spec = {
        { "<leader>gb", group = "git blame" },
      },
    },
  },
}
