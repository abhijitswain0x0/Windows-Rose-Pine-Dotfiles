local options = {
	-- in your nvim-cmp setup, add to sources:
 sources = {
   { name = "html-css" },
   { name = "nvim_lsp" },
   { name = "luasnip" },
   -- ...
 },
 	formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "black" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 3000,  -- changed from 500
    lsp_fallback = true,
  },
}
return options