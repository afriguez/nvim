function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

local copy_entry_path = {
  desc = "Copy the filepath of the entry under the cursor system to clipboard",
  callback = function()
    local oil = require("oil")
    local entry = oil.get_cursor_entry()
    local dir = oil.get_current_dir()
    if not entry or not dir then
      return
    end
    vim.fn.setreg("+", dir .. entry.name)
    vim.notify(dir .. entry.name .. " copied to clipboard", vim.log.levels.INFO)
  end,
}

return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-mini/mini.icons" },
    opts = {
      columns = { "icon" },
      win_options = {
        winbar = "%!v:lua.get_oil_winbar()",
      },
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == '..'
        end,
      },
      keymaps = {
        ["cc"] = { copy_entry_path, mode = "n" },
      },
    },
    lazy = false,
    keys = function()
      return {
        { "<C-n>", "<cmd>Oil<cr>" }
      }
    end,
  },
  {
    "benomahony/oil-git.nvim",
    dependencies = { "stevearc/oil.nvim" },
  }
}
