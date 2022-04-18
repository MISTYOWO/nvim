return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
use {
    "ellisonleao/gruvbox.nvim",
    requires = {"rktjmp/lush.nvim"}
}
-- nvim-tree (新增)
use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
}

use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

use {
    'nvim-telescope/telescope.nvim',
    requires = {
        {'nvim-telescope/telescope-live-grep-raw.nvim'}
    }
}

end)


