local lspconfig = require 'lspconfig'
local mason_lspconfig = require 'mason-lspconfig'
local servers = require 'language-servers'
local capabilities = require('cmp_nvim_lsp').default_capabilities()

mason_lspconfig.setup {
	ensure_installed = servers,
	automatic_installation = true,
}

mason_lspconfig.setup_handlers {
	function(server_name)
		lspconfig[server_name].setup {
			capabilities = capabilities,
		}
	end,
}
