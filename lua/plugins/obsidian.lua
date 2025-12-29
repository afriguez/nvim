local is_afriguez = false
if vim.g.hostname == vim.g.afriguez then
  is_afriguez = true
end

return {
  {
    "obsidian-nvim/obsidian.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = {
      workspaces = {
        {
          name = is_afriguez and "nb" or "obsidian",
          path = is_afriguez and "~/workspace/nb" or "~/workspace/obsidian",
          overrides = {
            frontmatter = { enabled = true },
            footer = { enabled = true },
          },
        },
        {
          name = "blog",
          path = "~/workspace/github.com/Adrephos/blog",
          overrides = {
            frontmatter = { enabled = false },
            footer = { enabled = true },
            notes_subdir = "blog",
            templates = {
              enabled = false,
              folder = "templates",
              date_format = "%Y-%m-%d",
              time_format = "%H:%M",
            },
          },
        },
        {
          name = "default",
          path = "~/note",
          overrides = {
            frontmatter = { enabled = false },
            footer = { enabled = false },
          },
        },
      },
      legacy_commands = false,
      templates = {
        folder = "Templates",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M",
      },
      notes_subdir = is_afriguez and "home" or "Zettelkasten",
      ui = { enable = false },
      checkbox = {
        enabled = true,
        create_new = true,
        order = { " ", "/", "x", "-" },
      },
      attachments = {
        img_folder = "",
        img_name_func = function()
          return string.format("Pasted image %s", os.date "%Y%m%d%H%M%S")
        end,
        confirm_img_paste = false,
      },
      note_id_func = function()
        return os.date("%Y%m%d%H%M%S")
      end
    },
    keys = function()
      return {
        { "<leader>v",  "<cmd>Obsidian paste_img<cr>" },
        { "<leader>of", "<cmd>Obsidian search<cr>" },
        { "<leader>ol", "<cmd>Obsidian follow_link<cr>" },
        { "<leader>on", is_afriguez and "<cmd>Obsidian new<cr>" or "<cmd>Obsidian new_from_template<CR>" },
      }
    end,
  }
}
