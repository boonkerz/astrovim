-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.workflow.precognition-nvim" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  --  { import = "astrocommunity.workflow.hardtime-nvim" },
  -- import/override with your plugins folder
}
