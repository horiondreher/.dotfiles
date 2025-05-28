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
}
