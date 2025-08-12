require('avante').setup({
	provider = "deepseek",
	providers = {
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
