return {
	{
		"pwntester/octo.nvim",
		cmd = "Octo",
		opts = {
			enable_builtin = true,
			default_to_projects_v2 = true,
			default_merge_method = "squash",
			picker = "snacks",
			ssh_aliases = {
				["github.com-emu"] = "github.com",
			},
		},
	},
}
