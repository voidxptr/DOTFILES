source ~/.config/nvim/vim-plug/plugins.vim



call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
      \ })

call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
      \ 'border': 'rounded',
      \ 'max_height': '75%',
      \ 'min_height': 0,
      \ 'prompt_position': 'bottom',
      \ 'reverse': 0,
      \ })))

" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

:colorscheme onedark

:nmap <F9> :NERDTreeToggle<CR>

:nmap <F10> :TagbarToggle<CR>


set list listchars=tab:»\ ,trail:˽,space:·

"Vimtex
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'


lua << END


vim.cmd('autocmd VimEnter * wincmd p')


-------- Bufferline ----------

---require("bufferline").setup {
---
---	options = {
---	separator_style = "slant",
---	}
---}


-------- THEME ---------------

-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

--local kitr = require('lualine.themes.kitr')

-------- Lualine -------------


local colors = {
	white = '#e6e6c6',
	red = '#ea4545',
	green = '#a0c764',
	yellow = '#dbdb55',
	blue = '#55dbd4',
	purple = '#e999e9',
	cyan = '#a9c1e1',
	orange = '#ffabcd',
	black = '#3f383f',
	fullblack = '#222222',
}


local kitr_theme = {
	normal = {
		a = {fg = colors.black, bg = colors.blue, gui = 'bold'},
		b = {fg = colors.white, bg = colors.black},
		c = {fg = colors.white, bg = colors.black},
		z = {fg = colors.black, bg = colors.cyan},
		y = {fg = colors.white, bg = colors.fullblack},
		x = {fg = colors.fullblack, bg = colors.orange}
	},
	insert = {
		a = {fg = colors.black, bg = colors.red, gui = 'bold'},
		b = {fg = colors.white, bg = colors.black},
		z = {fg = colors.black, bg = colors.cyan},
		y = {fg = colors.white, bg = colors.fullblack},
		x = {fg = colors.fullblack, bg = colors.orange}
	},
	visual = {
		a = {fg = colors.black, bg = colors.purple, gui = 'bold'},
		b = {fg = colors.white, bg = colors.black},
		z = {fg = colors.black, bg = colors.cyan},
		y = {fg = colors.white, bg = colors.fullblack},
		x = {fg = colors.fullblack, bg = colors.orange}
	},
	replace = {
		a = {fg = colors.black, bg = colors.blue, gui = 'bold'},
		b = {fg = colors.white, bg = colors.black},
		z = {fg = colors.black, bg = colors.cyan},
		y = {fg = colors.white, bg = colors.fullblack},
		x = {fg = colors.fullblack, bg = colors.orange}
	},
	command = {
		a = {fg = colors.black, bg = colors.yellow, gui = 'bold'},
		b = {fg = colors.white, bg = colors.black},
		z = {fg = colors.black, bg = colors.cyan},
		y = {fg = colors.white, bg = colors.fullblack},
		x = {fg = colors.fullblack, bg = colors.orange}
	},
	inactive = {
		a = {fg = colors.black, bg = colors.black, gui = 'bold'},
		b = {fg = colors.white, bg = colors.black},
		c = {fg = colors.white, bg = colors.black},
		z = {fg = colors.black, bg = colors.cyan},
		y = {fg = colors.white, bg = colors.fullblack},
		x = {fg = colors.fullblack, bg = colors.orange}
	}
}


require('lualine').setup {
	options = {
		theme = kitr_theme,
		section_separators = { left = '▙', right = '▜'},
		component_separators = { left = '▚', right = '▚' }
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = { 
		{'diagnostics',
	    
        -- Color
        
        

        

		sources = {'nvim_lsp','vim_lsp'},

		-- Displays diagnostics for the defined severity types
		sections = { 'error', 'warn', 'info', 'hint' },
   		diagnostics_color = {

     		-- Same values as the general color option can be used here.
     		error = {colors.red}, -- Changes diagnostics' error color.
	     	warn  = {colors.yellow},  -- Changes diagnostics' warn color.
      		info  = {colors.purple},  -- Changes diagnostics' info color.
      		hint  = {colors.cyan} ,  -- Changes diagnostics' hint color.
		},
    		symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
			colored = true,           -- Displays diagnostics status in color if set to true.
			update_in_insert = false, -- Update diagnostics in insert mode.
 			always_visible = true,   -- Show diagnostics even if there are none.
		} },
		lualine_z = {'progress','location'}
	
	}
}






-------- Web Devicons --------

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
 -- globally enable "strict" selection of icons - icon will be looked up in
 -- different tables, first by filename, and if not found by extension; this
 -- prevents cases when file doesn't have any extension but still gets some icon
 -- because its name happened to match some extension (default to false)
 strict = true;
 -- same as `override` but specifically for overrides by filename
 -- takes effect when `strict` is true
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 };
 -- same as `override` but specifically for overrides by extension
 -- takes effect when `strict` is true
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 };
}

require("xab")

END

