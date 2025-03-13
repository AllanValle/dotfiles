local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed =
        { "c", "cpp", "python", "markdown", "markdown_inline", "yaml", "html" },
    sync_install = true,
    ignore_install = { "javascript", "typescript", "latex" }, -- List of parsers to ignore installing
    highlight = {
        enable = true,       -- false will disable the whole extension
        disable = { "" },    -- list of language that will be disabled
        additional_vim_regex_highlighting = true,

    },
    indent = { enable = true, disable = { "" } },
}
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = false
