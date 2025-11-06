return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, false },
      {
        "\\",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        formatters = {
          file = {
            truncate = 100,
          },
        },
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    enabled = true,
    opts = function(_, opts)
      opts.sections.lualine_c[4] = { "filename", path = 1 }
    end,
  },

  {
    "zaucy/mcos.nvim",
    dependencies = {
      "jake-stewart/multicursor.nvim",
    },
    config = function()
      local mcos = require("mcos")
      mcos.setup({})

      -- mcos doesn't setup any keymaps
      -- here are some recommended ones
      vim.keymap.set({ "n", "v" }, "gms", mcos.opkeymapfunc, { expr = true })
      vim.keymap.set({ "n" }, "gmss", mcos.bufkeymapfunc)
    end,
  },
}
