local api = vim.api

api.nvim_create_autocmd("BufWritePost", {
	pattern = {"*.html", "*.css", "*.scss", "*.js", "*.jsx", "*.ts", "*.tsx", "*.vue", "*.json", "*.md", "*.yaml", "*.yml"},
	command = "silent !prettier --write %"
})
