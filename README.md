# 💤 Minha Configuração LazyVim

## 🌟 Visão Geral

Esta é uma configuração do [LazyVim](https://github.com/LazyVim/LazyVim) instalada via Omakub, projetada para fornecer um ambiente de desenvolvimento Neovim poderoso e extensível.

## 📂 Estrutura do Projeto

```
.
├── init.lua                # Ponto de entrada principal da configuração do Neovim
├── lua/
│   ├── config/             # Arquivos de configuração principais
│   │   ├── autocmds.lua    # Configuração de auto-comandos
│   │   ├── keymaps.lua     # Mapeamentos de teclas personalizados
│   │   ├── lazy.lua        # Configuração do gerenciador de plugins Lazy
│   │   ├── options.lua     # Opções do Neovim
│   └── plugins/            # Especificações de plugins
│       ├── example.lua     # Configuração de exemplo de plugin
│       └── theme.lua       # Configuração de tema
└── plugin/
    └── after/
        └── transparency.lua # Configurações de transparência
```

## 🔧 Arquivos de Configuração Principais

### 1. `init.lua`
- Ponto de entrada que inicializa toda a configuração
- Carrega a configuração do gerenciador de plugins lazy

### 2. `lua/config/lazy.lua`
- Configura o gerenciador de plugins Lazy
- Recursos principais:
  - Instalação automática de plugins
  - Verificações periódicas de atualização de plugins
  - Esquemas de cores padrão (TokyoNight, Habamax)
  - Otimizações de desempenho

#### Destaques do Gerenciamento de Plugins
- Atualizações automáticas de plugins
- Carregamento tardio de plugins
- Plugins RTP desnecessários desativados

### 3. `lua/plugins/theme.lua`
- Define o esquema de cores para Catppuccin
- Fácil de modificar para outros temas

### 4. `plugin/after/transparency.lua`
- Fornece um fundo transparente para vários elementos da interface do Neovim
- Configura transparência para:
  - Buffers normais
  - Janelas flutuantes
  - Telescope
  - NeoTree
  - Notify
  - E muito mais

## 🚀 Oportunidades de Personalização

### 1. Configuração de Plugins
- Explore `lua/plugins/example.lua` para inspiração sobre como adicionar/modificar plugins
- Adicione facilmente suporte a linguagens, ferramentas ou plugins personalizados

### 2. Mapeamentos de Teclas
- Modifique `lua/config/keymaps.lua` para adicionar associações de teclas personalizadas
- Referencie os mapeamentos padrão do LazyVim

### 3. Auto Comandos
- Estenda `lua/config/autocmds.lua` com auto-comandos personalizados
- Execute ações automaticamente com base em tipos de arquivo ou eventos

### 4. Tema e Aparência
- Altere o esquema de cores em `lua/plugins/theme.lua`
- Ajuste as configurações de transparência em `plugin/after/transparency.lua`

## 🛠 Próximos Passos Recomendados

1. **Aprenda o Básico do LazyVim**
   - Leia a [Documentação Oficial do LazyVim](https://lazyvim.github.io/)
   - Entenda o gerenciamento e configuração de plugins

2. **Explore os Plugins Existentes**
   - Verifique a lista atual de plugins em `lua/config/lazy.lua`
   - Adicione novos plugins para funcionalidades adicionais

3. **Personalize os Mapeamentos de Teclas**
   - Crie mapeamentos de teclas personalizados
   - Melhore a eficiência do seu fluxo de trabalho

4. **Suporte a Linguagens**
   - Adicione configurações de LSP, treesitter e mason para suas linguagens preferidas

## 💡 Dicas Profissionais
- Use `:Mason` para gerenciar servidores de linguagem
- Explore `:Lazy` para gerenciamento de plugins
- Verifique `:LazyVim` para recursos integrados

## 🔗 Recursos Úteis
- [LazyVim GitHub](https://github.com/LazyVim/LazyVim)
- [Documentação do Neovim](https://neovim.io/doc/)
- [Coleções Incríveis de Neovim](https://github.com/rockerBOO/awesome-neovim)

## 📝 Licença
Esta configuração é de código aberto. Consulte o arquivo LICENSE do projeto para detalhes.
