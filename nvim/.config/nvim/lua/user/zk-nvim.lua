local zk_status_ok, zk = pcall(require, "zk")
if not zk_status_ok then
    return
end

zk.setup {
    -- can be "telescope", "fzf", "fzf_lua" or "select" (`vim.ui.select`)
    -- it's recommended to use "telescope", "fzf" or "fzf_lua"
    picker = "telescope",

    lsp = {
        -- `config` is passed to `vim.lsp.start_client(config)`
        config = {
            cmd = { "zk", "lsp" },
            name = "zk",
            -- on_attach = ...
            -- etc, see `:h vim.lsp.start_client()`
        },

        -- automatically attach buffers in a zk notebook that match the given filetypes
        auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
        },
    },
}
