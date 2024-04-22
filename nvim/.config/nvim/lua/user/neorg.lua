local neorg_status_ok, neorg = pcall(require, "neorg")
if not neorg_status_ok then
    return
end

neorg.setup {
    load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
        ["core.integrations.nvim-cmp"] = {},
        ["core.export"] = {},
        ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
        ["core.keybinds"] = {
            -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
            config = {
                default_keybinds = true,
                neorg_leader = "<Leader><Leader>",
            },
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
                workspaces = {
                    notes = "~/neorg",
                    thesis = "~/Documents/Germany/thesis/notes"
                },
            },
        },
    },
}
