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

require("ibl").setup {
 indent = {
      char = "│",
      highlight = { "NonText" }
  },
  scope = {
    enabled = true,
    show_start = true,
    show_end = true,
    highlight = {"Function", "Label"}
  }
}
EOF
