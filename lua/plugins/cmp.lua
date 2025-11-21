return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      "hrsh7th/cmp-path"
    },
    opts = function()
      local icons = {
        menu = {
          nvim_lsp = '',
          vsnip = '>',
          buffer = '',
          path = '/:',
        },
        kind = {
          Class = "",
          Constructor = "",
          Function = "󰊕",
          Keyword = "",
          Method = "",
          Module = "",
          Snippet = "",
          Text = "󰊄",
          Variable = "",
          Struct = "",
          Enum = "",
          Constant = "",
          Field = "",
          Interface = ""
        }
      }

      local cmp = require("cmp")
      local select_opts = { behavior = cmp.SelectBehavior.Select }

      return {
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered({
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            winhighlight = "Normal:CustomCmpMenu,FloatBorder:NONE,CursorLine:CustomCmpCursorLine",
            scrollbar = false
          }),
          documentation = cmp.config.window.bordered({ border = 'rounded' })
        },
        mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = cmp.mapping.select_next_item(select_opts),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(select_opts),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
        }),
        formatting = {
          fields = { 'menu', 'abbr', 'kind' },
          format = function(entry, item)
            item.menu = icons.menu[entry.source.name]
            item.kind = (icons.kind[item.kind] or "") .. " " .. item.kind
            return item
          end,
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "vsnip" }
        }, {
          { name = "buffer" },
          { name = "path" }
        })
      }
    end,
  }
}
