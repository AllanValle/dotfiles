vim.g.zotcite_open_in_zotero = 1
vim.g.ZCitationTemplate = '{Authors}_{Year}'
vim.g.zotcite_conceallevel = 3

local status_ok, zotcite = pcall(require, "zotcite")
if not status_ok then
    return
end

zotcite.setup({
    filetypes = { "pandoc", "markdown" },
})
