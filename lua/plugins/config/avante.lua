require('avante').setup({
	provider = "claude",
	providers = {
		claude = {
			endpoint = "https://api.anthropic.com",
			model = "claude-sonnet-4-20250514",
			timeout = 30000,
			extra_request_body = {
				temperature = 0.75,
				max_tokens = 20480,
			},
		},
		deepseek = {
			__inherited_from = "openai",
			api_key_name = "DEEPSEEK_API_KEY",
			endpoint = "https://api.deepseek.com",
			model = "deepseek-coder",
			max_tokens = 4096,
			extra_request_body = {
				temperature = 0
			}
		}
	}
})

require('render-markdown').setup({
	file_types = { 'markdown', 'Avante' },
})
