local ok, toggleTerm = pcall(require, "toggleterm")
if not ok then
    return
end

toggleTerm.setup {
    shade_terminals = false,
}
