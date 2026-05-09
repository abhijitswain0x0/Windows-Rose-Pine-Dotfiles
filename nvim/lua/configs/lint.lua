local lint = require("lint")

lint.linters_by_ft = {
  html = { "htmlhint" },
  css = { "stylelint" },
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
}

-- trigger linting on these events
vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})