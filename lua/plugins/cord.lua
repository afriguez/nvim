local editor_opts = {}

if vim.g.hostname ~= "marija" then
  editor_opts.tooltip = "北海道"
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
