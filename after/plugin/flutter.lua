local status, flutter_tools = pcall(require, "flutter-tools")
if not status then
  return
end

require("telescope").load_extension("flutter")

flutter_tools.setup({
  debugger = {
    enabled = true,
    run_via_dap = true,
  },
  outline = { auto_open = false },
  decorations = {
    statusline = { device = true, app_version = true },
  },
  widget_guides = { enabled = true, debug = true },
  dev_log = { enabled = true, open_cmd = "tabedit" },
  flutter_path = "/home/zubarev/fvm/default/bin",
  fvm = true,
  lsp = {
    color = {
      enabled = true,
      background = true,
      virtual_text = false,
    },
    settings = {
      showTodos = true,
      renameFilesWithClasses = "prompt",
    },
    capabilities = require("cmp_nvim_lsp").default_capabilities,
  },
})
