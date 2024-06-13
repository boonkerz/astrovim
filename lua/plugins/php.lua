return {
  { -- lazy
    "ccaglak/phptools.nvim",
    keys = {
      { "<leader>lm", "<cmd>PhpMethod<cr>" },
      { "<leader>lc", "<cmd>PhpClass<cr>" },
      { "<leader>ls", "<cmd>PhpScripts<cr>" },
      { "<leader>ln", "<cmd>PhpNamespace<cr>" },
      { "<leader>lg", "<cmd>PhpGetSet<cr>" },
      { "<leader>lf", "<cmd>PhpCreate<cr>" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("phptools").setup {
        ui = false, -- if you have stevearc/dressing.nvim or something similar keep it false or else true
      }
      vim.keymap.set("v", "<leader>lr", ":PhpRefactor<cr>")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "php", "phpdoc" })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "phpactor" })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "php" })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "php-cs-fixer" })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(
        opts.ensure_installed,
        { "phpactor", "php-debug-adapter", "php-cs-fixer" }
      )
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { "php_cs_fixer" },
      },
    },
  },
}
