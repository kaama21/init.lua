function ColorMyPencils(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)

    for _, element in ipairs({ 'FloatBorder', 'NormalFloat', 'Normal' }) do
        vim.api.nvim_set_hl(0, element, { bg = 'none' })
    end
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            term_colors = true,
            transparent_background = true,
            dim_inactive = {
                enabled = false,   -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            integrations = {
                cmp = true,
                gitsigns = true,
                treesitter = true,
                harpoon = true,
                telescope = true,
                mason = true,
                noice = true,
                notify = true,
                which_key = true,
                fidget = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                    inlay_hints = {
                        background = true,
                    },
                },
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            ColorMyPencils()
        end,
    }
}
