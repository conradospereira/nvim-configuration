-- options.lua - Configurações globais do Neovim

local opt = vim.opt

-- Configurações da UI
opt.number = true           -- Mostra números de linha
opt.relativenumber = true   -- Mostra números de linha relativos
opt.cursorline = true       -- Destaca a linha atual
opt.showmode = false        -- Não mostra o modo atual (já temos statusline)
opt.termguicolors = true    -- Suporte a cores true color
opt.signcolumn = "yes"      -- Sempre mostra a coluna de sinal
opt.scrolloff = 8           -- Mantém o cursor a 8 linhas das bordas ao rolar
opt.sidescrolloff = 8       -- Mantém o cursor a 8 colunas das bordas ao rolar

-- Indentação e Tabulação
opt.expandtab = true        -- Usa espaços em vez de tabs
opt.shiftwidth = 2          -- Número de espaços para cada nível de indentação
opt.tabstop = 2             -- Número de espaços que um tab equivale
opt.smartindent = true      -- Indentação inteligente
opt.wrap = false            -- Não quebra as linhas

-- Busca
opt.ignorecase = true       -- Ignora maiúsculas/minúsculas na busca
opt.smartcase = true        -- Não ignora caixa se houver maiúsculas
opt.hlsearch = true         -- Destaca resultados da busca
opt.incsearch = true        -- Busca incremental conforme digita

-- Comportamento da Edição
opt.clipboard = "unnamedplus" -- Usa o clipboard do sistema
opt.undofile = true         -- Undo persistente
opt.backup = false          -- Não cria arquivos de backup
opt.swapfile = false        -- Não cria arquivos swap
opt.updatetime = 250        -- Tempo em ms para atualizar
opt.timeoutlen = 300        -- Tempo para completar comandos

-- Outros
opt.completeopt = "menuone,noselect" -- Para autocompletar
opt.splitbelow = true       -- Janelas horizontais abrem abaixo
opt.splitright = true       -- Janelas verticais abrem à direita
opt.mouse = "a"             -- Habilita o mouse
