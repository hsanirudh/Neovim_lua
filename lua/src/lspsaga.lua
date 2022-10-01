local status_ok, _ = pcall(require, "lspsaga")
if not status_ok then
	return
end

local saga = require("lspsaga")

saga.init_lsp_saga({
	border_style = "single",
	server_filetype_map = {},
})
