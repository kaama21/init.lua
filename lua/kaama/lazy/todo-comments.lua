-- FIX : THIS IS A FIX
-- TODO:: THIS IS A TODO
-- NOTE : THIS IS A NOTE -> != 󰀫    󰆼
-- WARNING : THIS IS A WARNING
-- PERF : I DONT KNOW ABOUT THIS ONE
-- HACK : HUH?
return {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        signs = false
    }
}
