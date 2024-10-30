local status_ok, cmp_zotcite = pcall(require, "cmp_zotcite")
if not status_ok then
    return
end

cmp_zotcite.setup({
    filetypes = { "pandoc", "markdown" },
})

