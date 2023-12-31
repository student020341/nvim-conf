-- extras

vim.api.nvim_win_set_option(0, "number", true)
vim.api.nvim_win_set_option(0, "relativenumber", true)
vim.api.nvim_win_set_option(0, "cursorline", true)

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

-- notes

vim.api.nvim_create_user_command("Notes", function(args)
	local arg = args.fargs[1]
	local valid = { "tasks", "logs", "hooks", "how-to", "errors" }
	for _, val in ipairs(valid) do
		if val == arg then
			vim.cmd.edit("~/notes/" .. arg)
			return
		end
	end

	print("BAD NOTE:", arg)
end, {
	nargs = 1,
	complete = function(l, c, p)
		return { "tasks", "logs", "hooks", "how-to", "errors" }
	end,
})
