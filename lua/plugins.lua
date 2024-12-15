-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd('BufWritePost', {
  group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
  pattern = 'plugins.lua',
  command = 'source <afile> | PackerCompile',
})

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer 自体のインストール
  -- 他のプラグイン
  use {
    'nvim-telescope/telescope-file-browser.nvim',
    requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  }
  -- Common utilities
  use 'nvim-lua/plenary.nvim'
  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Colorschema
  use 'rebelot/kanagawa.nvim'

  -- nvim-tree
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons'
      },
  }

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'

    -- other plugins...

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'       


end)
