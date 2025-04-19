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
		"echasnovski/mini.bracketed",
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

	-- Better increase/descrease
	{
		"monaqa/dial.nvim",
    -- stylua: ignore
    keys = {
      { "<C-a>", function() return require("dial.map").inc_normal() end, expr = true, desc = "Increment" },
      { "<C-x>", function() return require("dial.map").dec_normal() end, expr = true, desc = "Decrement" },
    },
		config = function()
			local augend = require("dial.augend")
			require("dial.config").augends:register_group({
				default = {
					augend.integer.alias.decimal,
					augend.integer.alias.hex,
					augend.date.alias["%Y/%m/%d"],
					augend.constant.alias.bool,
					augend.semver.alias.semver,
					augend.constant.new({ elements = { "let", "const" } }),
				},
			})
		end,
	},

	{
		"simrat39/symbols-outline.nvim",
		keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
		cmd = "SymbolsOutline",
		opts = {
			position = "right",
		},
	},

	{
		{
			"f-person/git-blame.nvim",
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
		"folke/which-key.nvim",
		opts = {
			spec = {
				{ "<leader>gb", group = "git blame" },
			},
		},
	},
}
