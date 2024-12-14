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
end)
