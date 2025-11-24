local editor_opts = {}

if vim.g.hostname ~= vim.g.afriguez then
  editor_opts.tooltip = "北海道"
else
  editor_opts.tooltip = "田舎のネズミ"
end

return {
  {
    "vyfor/cord.nvim",
    build = ":Cord update",
    opts = {
      editor = editor_opts,
      idle = { enabled = false },
    }
  }
}
