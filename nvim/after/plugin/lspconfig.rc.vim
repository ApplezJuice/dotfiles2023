lua << EOF
require("nvim-lsp-installer").setup({
  ensure_installed = {"ccls", "omnisharp"},
})

EOF
