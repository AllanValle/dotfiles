
local status_ok, zotcite = pcall(require, "zotcite")
if not status_ok then
    return
end

zotcite.setup({
    filetypes = { "pandoc", "markdown" },
    open_in_zotero = true,
    conceallevel = 3,
    ZCitationTemplate = '{Authors}_{Year}'
})
