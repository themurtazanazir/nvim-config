local options = {
	clipboard = "unnamedplus",
	number = true,
	relativenumber = true,
	cursorline = true,
	signcolumn = "yes",
	termguicolors = true, 
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
