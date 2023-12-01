--require('rose-pine').setup({
--    disable_background = true
--})

require('tokyonight').setup({
    disable_background = true
})

--DEFAULT_COLOR = 'tokyonight'
--DEFAULT_COLOR = 'poimandres'
--DEFAULT_COLOR = 'rose-pine'
DEFAULT_COLOR = 'monochrome'

function ColorMyPencils(color)
    color = DEFAULT_COLOR
	color = color
	vim.cmd.colorscheme(color)

    if color == 'rose-pine' or
       color == 'poimandres' or
       color == 'tokyonight'
       then
	    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
end

function SetColorScheme(new_color)
	vim.cmd.colorscheme(new_color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end



ColorMyPencils()
