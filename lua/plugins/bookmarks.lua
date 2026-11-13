return {
  {
    "heilgar/bookmarks.nvim",
    dependencies = {
      "kkharji/sqlite.lua",
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("bookmarks").setup({
        use_branch_specific = true,
        default_mappings = false,
      })
      require("telescope").load_extension("bookmarks")
    end,
    cmd = {
      "BookmarkAdd",
      "BookmarkRemove",
      "Bookmarks",
    },
    keys = {
      -- custom keybinds cause bookmark highlighting to not be updated, :e is a workaround
      { "<leader>ma", "<cmd>BookmarkAdd<cr><cmd>e<cr>", desc = "Add Bookmark" },
      { "<leader>mr", "<cmd>BookmarkRemove<cr><cmd>e<cr>", desc = "Remove Bookmark" },
      {
        "<leader>mj",
        function()
          require("bookmarks.navigation").jump_to_next()
        end,
        desc = "Jump to Next Bookmark",
      },
      {
        "<leader>mk",
        function()
          require("bookmarks.navigation").jump_to_prev()
        end,
        desc = "Jump to Previous Bookmark",
      },
      { "<leader>ml", "<cmd>Bookmarks<cr>", desc = "List Bookmarks" },
      { "<leader>ms", "<cmd>Telescope bookmarks list<cr>", desc = "Switch Bookmark List" },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>m", group = "bookmarks", icon = "" },
      },
    },
  },
}
