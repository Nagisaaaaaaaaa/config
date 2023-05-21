return require('packer').startup(function(use)
  -- packer can manage itself
  use "wbthomason/packer.nvim"
  
  use {
    "phaazon/hop.nvim",
    branch = 'v2',
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

end)
