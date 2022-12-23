local config = {
  header = {
    "██╗░░██╗██╗  ░█████╗░░█████╗░██████╗░███████╗██████╗░░██████╗██╗",
    "██║░░██║██║  ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔════╝██║",
    "███████║██║  ██║░░╚═╝██║░░██║██║░░██║█████╗░░██████╔╝╚█████╗░██║",
    "██╔══██║██║  ██║░░██╗██║░░██║██║░░██║██╔══╝░░██╔══██╗░╚═══██╗╚═╝",
    "██║░░██║██║  ╚█████╔╝╚█████╔╝██████╔╝███████╗██║░░██║██████╔╝██╗",
    "╚═╝░░╚═╝╚═╝  ░╚════╝░░╚════╝░╚═════╝░╚══════╝╚═╝░░╚═╝╚═════╝░╚═╝",
  },
  colorscheme = "tokyonight",
  plugins = {
    init = {
      {
        "folke/tokyonight.nvim",
        as = "tokyonight",
        config = function()
          require("tokyonight").setup({
            style = "night",
          })
        end,
      },
      {
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
          local saga = require("lspsaga")
          local keymap = vim.keymap.set

          saga.init_lsp_saga({
            -- your configuration
          })

          keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

          -- Code action
          keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })

          -- Rename
          keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })

          -- Peek Definition
          -- you can edit the definition file in this flaotwindow
          -- also support open/vsplit/etc operation check definition_action_keys
          -- support tagstack C-t jump back
          keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

          -- Show line diagnostics
          keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

          -- Show cursor diagnostics
          keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

          -- Diagnostic jump can use `<c-o>` to jump back
          keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
          keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

          -- Only jump to error
          keymap("n", "[E", function()
            require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
          end, { silent = true })
          keymap("n", "]E", function()
            require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
          end, { silent = true })

          -- Outline
          keymap("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { silent = true })

          -- Hover Doc
          keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

          -- Float terminal
          keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
          -- if you want to pass some cli command into a terminal you can do it like this
          -- open lazygit in lspsaga float terminal
          keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", { silent = true })
          -- close floaterm
          keymap("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })
        end,
      },
    },
    heirline = function(config)
      -- the first element of the default configuration table is the statusline
      config[1] = {
        -- set the fg/bg of the statusline
        hl = { fg = "fg", bg = "bg" },
        -- when adding the mode component, enable the mode text with padding to the left/right of it
        astronvim.status.component.mode({ mode_text = { padding = { left = 1, right = 1 } } }),
        -- add all the other components for the statusline
        astronvim.status.component.git_branch(),
        astronvim.status.component.file_info(),
        astronvim.status.component.git_diff(),
        astronvim.status.component.diagnostics(),
        astronvim.status.component.fill(),
        astronvim.status.component.cmd_info(),
        astronvim.status.component.fill(),
        astronvim.status.component.lsp(),
        astronvim.status.component.treesitter(),
        astronvim.status.component.nav(),
      }
      -- return the final configuration table
      return config
    end,
  },
}

return config
