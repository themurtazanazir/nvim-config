local options = {
    clipboard = "unnamedplus", 
    number = true,
    relativenumber = true,
    smartindent = true,
    cursorline = true,
    signcolumn = "yes",
    termguicolors = true, 
    scrolloff = 8,
    shiftwidth = 4,
    expandtab = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
