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

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
EOF
