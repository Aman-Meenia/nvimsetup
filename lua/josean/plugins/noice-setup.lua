-- To move the command line above the tabline
return {
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        presets = {
          -- bottom_search = true,
          command_palette = true,
          long_message_to_split = false,
          inc_rename = false,
          lsp_doc_border = false,
        },
      })
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      pos = "bottom",
      timeout = 400,
    },
  },
}
