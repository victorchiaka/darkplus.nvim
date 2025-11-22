-- lua/darkplus/init.lua
-- Optional: Programmatic theme loader with configuration options

local M = {}

-- Default configuration
M.config = {
	-- Future options could go here
	-- transparent = false,
	-- italic_comments = true,
	-- etc.
}

-- Setup function for configuration (if you add options later)
function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

-- Load the colorscheme
function M.load()
	-- Clear any existing colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	-- Set the colorscheme
	vim.cmd("colorscheme darkplus")
end

-- Convenience function - same as :colorscheme darkplus
M.colorscheme = M.load

return M
