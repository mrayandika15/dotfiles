-- disable this plugin
if true then
  return {}
end

return {
  -- Add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "java",
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "php",
      },
    },
  },

  -- Extend the default config with additional parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "java",
        "tsx",
        "typescript",
        "php",
      })
    end,
  },
}
