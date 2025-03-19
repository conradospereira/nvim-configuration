# Documentação da Configuração NeoVim com Lua/LazyVim

## Visão Geral

Esta documentação detalha a estrutura de pastas e arquivos da minha configuração personalizada do NeoVim, utilizando Lua como linguagem de script e LazyVim como framework de gerenciamento de plugins.

A estrutura foi projetada seguindo princípios modernos de desenvolvimento, buscando organização, modularidade e manutenibilidade. Cada diretório e arquivo tem uma função específica que contribui para o funcionamento harmônico do ambiente.

## Estrutura de Diretórios

```
~/.config/nvim/
├── init.lua                # Ponto de entrada principal
├── lazy-lock.json          # Lock file de versões dos plugins
├── lua/                    # Código Lua principal
│   ├── config/             # Configurações globais
│   ├── plugins/            # Definições e configurações de plugins
│   └── utils/              # Funções auxiliares
├── after/                  # Configurações carregadas por último
├── ftplugin/               # Configurações específicas por tipo de arquivo
└── snippets/               # Snippets personalizados
```

## Detalhamento dos Componentes

### Diretório Raiz

#### `init.lua`
Este é o arquivo de entrada da configuração. Carrega os módulos básicos e inicializa o LazyVim.

```lua
-- Carrega configurações básicas
require("config")

-- Inicializa o gerenciador de plugins
require("config.lazy")
```

#### `lazy-lock.json`
Arquivo gerado e gerenciado pelo LazyVim que especifica as versões exatas dos plugins instalados, garantindo consistência entre ambientes.

### Diretório `lua/`

Este diretório contém o código Lua que define o comportamento do editor.

#### Subdiretório `lua/config/`

Responsável por configurações globais do NeoVim:

```
lua/config/
├── options.lua      # Opções gerais do editor
├── keymaps.lua      # Mapeamentos de teclas globais
├── autocmds.lua     # Comandos automáticos
├── init.lua         # Carregador de configurações
└── lazy.lua         # Configuração do LazyVim
```

**lua/config/options.lua**
Define opções gerais do editor como numeração de linhas, indentação, comportamento de busca, etc.

**lua/config/keymaps.lua**
Contém mapeamentos de teclas globais que se aplicam a todos os modos e buffers.

**lua/config/autocmds.lua**
Define comandos automáticos que respondem a eventos do editor.

**lua/config/init.lua**
Carrega todos os arquivos de configuração:

```lua
-- Carrega as configurações do Neovim
require("config.options")
-- Carrega os mapeamentos de teclas
require("config.keymaps")
-- Carrega os comandos automáticos
require("config.autocmds")
```

**lua/config/lazy.lua**
Configura o LazyVim e gerencia a instalação de plugins:

```lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- Código de instalação do LazyVim se necessário
-- ...

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  -- Outras configurações
})
```

#### Subdiretório `lua/plugins/`

Contém definições e configurações de plugins organizadas por categoria:

```
lua/plugins/
├── init.lua         # Plugins básicos
├── lsp/            # Language Server Protocol
│   ├── init.lua     # Configuração principal do LSP
│   ├── servers.lua  # Configuração de servidores LSP
│   └── formatting.lua # Formatação de código
├── ui/              # Interface do usuário
│   ├── colorscheme.lua
│   ├── statusline.lua
│   └── dashboard.lua
├── editor/          # Funcionalidades do editor
│   ├── telescope.lua
│   ├── treesitter.lua
│   └── git.lua
└── coding/          # Auxílio à codificação
    ├── completion.lua
    └── snippets.lua
```

**lua/plugins/init.lua**
Define plugins básicos ou importa os módulos específicos:

```lua
return {
  -- Plugins fundamentais
  "folke/which-key.nvim",
  "nvim-lua/plenary.nvim",
  -- Outros plugins essenciais
}
```

**lua/plugins/lsp/**
Gerencia servidores de linguagem, formatação e diagnóstico.

**lua/plugins/ui/**
Configura a aparência e comportamento visual do editor.

**lua/plugins/editor/**
Aprimora funcionalidades de edição como navegação, busca e integração com git.

**lua/plugins/coding/**
Adiciona suporte a autocompletar, snippets e outras ferramentas de programação.

#### Subdiretório `lua/utils/`

Contém funções auxiliares para uso em toda a configuração:

```
lua/utils/
├── init.lua         # Exporta funções utilitárias
├── functions.lua    # Funções auxiliares gerais
├── path.lua         # Manipulação de caminhos
└── lsp.lua          # Funções auxiliares para LSP
```

**lua/utils/init.lua**
Exporta todas as funções utilitárias:

```lua
local M = {}

M.functions = require("utils.functions")
M.path = require("utils.path")
M.lsp = require("utils.lsp")

return M
```

### Diretório `after/`

Contém configurações que serão carregadas após as configurações principais:

```
after/
└── plugin/
    ├── highlights.lua  # Highlights personalizados
    └── commands.lua    # Comandos personalizados
```

Este diretório é ideal para sobrescrever configurações padrão de plugins ou do próprio LazyVim.

### Diretório `ftplugin/`

Contém configurações específicas para tipos de arquivo:

```
ftplugin/
├── lua.lua          # Para arquivos Lua
├── python.lua       # Para arquivos Python
└── markdown.lua     # Para arquivos Markdown
```

Estas configurações são carregadas apenas quando o tipo de arquivo correspondente é aberto.

### Diretório `snippets/`

Contém snippets personalizados para diferentes linguagens:

```
snippets/
├── lua.lua          # Snippets para Lua
├── python.lua       # Snippets para Python
└── global.lua       # Snippets globais
```

## Exemplo de Modularização de Plugins

O exemplo a seguir demonstra como modularizar a configuração de um plugin complexo como o LSP:

### `lua/plugins/lsp/init.lua`

```lua
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("plugins.lsp.servers")
    require("plugins.lsp.formatting")
  end,
}
```

## Instalação e Uso

1. Clone este repositório para seu diretório de configuração do NeoVim:
   ```bash
   git clone https://github.com/seu-usuario/nvim-config.git ~/.config/nvim
   ```

2. Inicie o NeoVim:
   ```bash
   nvim
   ```

3. Na primeira inicialização, o LazyVim será instalado automaticamente e baixará todos os plugins configurados.

## Personalização

Para personalizar esta configuração:

1. Modifique os arquivos em `lua/config/` para alterar comportamentos globais
2. Adicione ou remova plugins editando os arquivos em `lua/plugins/`
3. Crie configurações específicas por tipo de arquivo em `ftplugin/`
4. Adicione snippets personalizados em `snippets/`

## Conclusão

Esta estrutura de configuração foi projetada para ser modular, organizada e fácil de manter, permitindo gerenciar eficientemente uma configuração complexa do NeoVim com Lua e LazyVim. A separação clara de responsabilidades entre os diferentes arquivos e diretórios facilita a compreensão e a personalização do ambiente.
