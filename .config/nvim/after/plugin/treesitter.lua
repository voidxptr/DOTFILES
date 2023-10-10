require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "cpp", "c_sharp", "gdscript", "glsl", "hlsl", "json", "java", "rust", "vim", "vimdoc", "query" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

  },
}
