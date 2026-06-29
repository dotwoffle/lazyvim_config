return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {
          settings = {
            java = {
              format = {
                settings = {
                  url = vim.fn.expand("~/.config/nvim/formatting/jdtls_format_spec.xml"),
                  profile = "Default",
                },
              },
            },
          },
        },
      },
    },
  },
}
