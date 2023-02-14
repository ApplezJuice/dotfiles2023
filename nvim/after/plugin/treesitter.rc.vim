if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require('lualine').setup{
  sections = {
    lualine_c = {
      {
          'filename', path=1
      }
    }
  }
}
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "vim",
    "tsx",
    "json",
    "yaml",
    "html",
    "scss",
    "css",
    "vue",
    "typescript",
    "c_sharp",
    "cpp"
  },
}
EOF
