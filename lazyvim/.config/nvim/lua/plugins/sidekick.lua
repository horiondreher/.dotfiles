return {
  {
    "folke/sidekick.nvim",
    keys = {
      {
        "<C-\\>",
        function()
          require("sidekick.cli").toggle()
        end,
        desc = "Sidekick Toggle",
        mode = { "n", "t", "i", "x" },
      },
    },
  },
}
