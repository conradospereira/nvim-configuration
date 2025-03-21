# Configuração Neovim

Configuração modular e eficiente para Neovim com gerenciador de plugins lazy.nvim.

## Estrutura

```
.
├── init.lua                 # Arquivo principal
└── lua/
    ├── config/              # Configurações básicas
    │   ├── lazy.lua         # Gerenciador de plugins
    │   ├── keymaps.lua      # Atalhos de teclado
    │   ├── options.lua      # Opções globais
    │   └── bufferline.lua   # Configuração da barra de buffers
    └── plugins/             # Definições de plugins
        ├── bufferline.lua   # Plugin para buffers/abas
        └── nvim-tree.lua    # Explorador de arquivos
```

## Funcionalidades

### Plugins Principais
- **lazy.nvim**: Gerenciador de plugins com carregamento sob demanda
- **nvim-tree**: Explorador de arquivos moderno
- **bufferline**: Navegação intuitiva entre buffers

### Opções Importantes
- Interface limpa com números de linha relativos
- Indentação de 2 espaços
- Busca inteligente (diferencia maiúsculas quando você as digita)
- Sem arquivos de backup/swap

## Atalhos de Teclado

| Atalho | Função |
|--------|--------|
| `Espaço + e` | Abre/fecha o explorador de arquivos |
| `Tab` | Próximo buffer |
| `Espaço + q` | Buffer anterior |
| `Espaço + bc` | Fecha o buffer atual |
| `Espaço + bo` | Fecha outros buffers |
| `Espaço + 1-4` | Acessa os buffers 1-4 |
| `Ctrl + h/l` | Navega entre janelas (esquerda/direita) |

## Como Começar

1. Abra qualquer arquivo com `nvim arquivo.txt`
2. Pressione `Espaço + e` para abrir o explorador
3. Use `Tab` para navegar entre buffers abertos

## Por Que Esta Configuração?

- **Modular**: Cada arquivo tem uma responsabilidade específica
- **Rápida**: Carregamento eficiente de plugins
- **Simples**: Foco nas funcionalidades essenciais
- **Organizada**: Estrutura lógica e fácil de manter
