require("obsidian").setup({
	workspaces = {
		{
			name = "home",
			path = "~/.nb/home",
		},
	},
	legacy_commands = false,
	note_id_func = function(title)
		if not title or title == "" then
			return os.date("%Y%m%d%H%M%S")
		end

		if string.find(title, "/") then
			local last_part = string.match(title, "([^/]+)$")
			if last_part and last_part ~= "" then
				return last_part
			end
		end

		if string.find(title, "%s") then
			return os.date("%Y%m%d%H%M%S")
		end

		return title
	end
})
