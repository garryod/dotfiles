return {
  {
    "sudo-tee/opencode.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        optional = true,
        opts = function(_, opts)
          opts.file_types = opts.file_types or { "markdown" }
          if not vim.tbl_contains(opts.file_types, "opencode_output") then
            table.insert(opts.file_types, "opencode_output")
          end
        end,
      },
    },
    opts = {
      preferred_picker = "fzf",
      preferred_completion = "blink",
    },
  },
}
