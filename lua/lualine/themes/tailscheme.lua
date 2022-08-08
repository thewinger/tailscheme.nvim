-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- Credit: Zoltan Dalmadi(lightline)
-- LuaFormatter off

local colors = {
	white = "#F8FAFC",
	black = "#1E293B",
	red = "#fda4af",
	red2 = "#EF4444",
	green = "#5EEAD4",
	blue = "#7DD3FC",
	yellow = "#FDE047",
	purple = "#A78BFA",
	magenta = "#F472B6",
	orange = "#FDBA74",
	dark = "#0F172A",
	gray1 = "#CBD5E1",
	gray2 = "#64748b",
	gray3 = "#94A3B8",
}
-- LuaFormatter on
return {
	normal = {
		a = { fg = colors.dark, bg = colors.blue, gui = "bold" },
		b = { fg = colors.blue, bg = colors.bg },
		c = { fg = colors.gray3, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.dark, bg = colors.green, gui = "bold" },
		b = { fg = colors.green, bg = colors.bg },
		c = { fg = colors.gray3, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.dark, bg = colors.magenta, gui = "bold" },
		b = { fg = colors.magenta, bg = colors.bg },
		c = { fg = colors.gray3, bg = colors.bg },
	},
	command = { a = { fg = colors.yellow, bg = colors.bg, gui = "bold" } },
	replace = { a = { fg = colors.red1, bg = colors.bg, gui = "bold" } },
	inactive = {
		a = { fg = colors.gray1, bg = colors.bg, gui = "bold" },
		b = { fg = colors.gray1, bg = colors.bg },
		c = { fg = colors.gray1, bg = colors.bg },
	},
}
