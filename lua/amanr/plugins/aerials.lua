vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
return {
  'stevearc/aerial.nvim',
  opts = {
     on_attach = function (bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
     end,

     filter_kind = false
  },
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
}
