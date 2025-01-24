require('lspconfig').lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                -- Informar qual versão do Lua será usada. No caso do Neovim, é LuaJIT.
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Reconhecer a variável global `vim` como definida.
                globals = { 'vim' },
		disable = { 'missing-fields' },
            },
            workspace = {
                -- Tornar o servidor ciente dos arquivos runtime do Neovim.
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false, -- Desabilitar aviso sobre bibliotecas de terceiros.
            },
            telemetry = {
                enable = false, -- Desabilitar envio de telemetria.
            },
        },
    },
}
