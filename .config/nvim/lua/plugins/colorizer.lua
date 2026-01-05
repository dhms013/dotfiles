return {
  "NvChad/nvim-colorizer.lua",
  event = "VeryLazy",
  opts = {
    user_default_options = {
      css = true,
      scss = true,
      html = true,
      lua = true,
      mode = "virtualtext",
    },
  },
  config = function(_, opts)
    require("colorizer").setup(opts)
  end,
}
