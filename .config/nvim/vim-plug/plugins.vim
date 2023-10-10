call plug#begin('~/.config/nvim/autoload/plugged')
	
	function! UpdateRemotePlugins(...)
	    " Needed to refresh runtime files
	    let &rtp=&rtp

	    UpdateRemotePlugins
	endfunction
	

	Plug 'joshdick/onedark.vim'

	Plug 'preservim/nerdtree'
	Plug 'nvim-telescope/telescope-file-browser.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-lua/plenary.nvim'

	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	
	Plug 'github/copilot.vim'

	Plug 'nvimdev/dashboard-nvim'

	Plug 'nvim-tree/nvim-web-devicons'

	Plug 'prabirshrestha/vim-lsp'
	
	Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
	
	Plug 'mbbill/undotree'
    
    Plug 'chrisbra/Colorizer'

	" LSP Support
	Plug 'neovim/nvim-lspconfig'                           " Required
	Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'} " Optional
	Plug 'williamboman/mason-lspconfig.nvim'               " Optional

	" Autocompletion
	Plug 'hrsh7th/nvim-cmp'     " Required
	Plug 'hrsh7th/cmp-nvim-lsp' " Required
	Plug 'L3MON4D3/LuaSnip'     " Required

	Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

	Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-context'

	Plug 'nvim-lualine/lualine.nvim'
	Plug 'preservim/tagbar'
	Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }		
	Plug 'fladson/vim-kitty'
	
	Plug 'ryanoasis/vim-devicons'

    Plug 'ThePrimeagen/vim-be-good'


    Plug 'lervag/vimtex'

call plug#end()
