return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensured_install = { "lua" },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end
}
