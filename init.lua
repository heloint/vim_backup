local g   = vim.g
local o   = vim.o
local opt = vim.opt
local A   = vim.api

-- DEFAULTS
-- ====================================================================
vim.cmd("set encoding=UTF-8")
opt.relativenumber = true
o.clipboard = 'unnamedplus'
o.number = true
o.mouse= "a"
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.swapfile = false
o.backup = false
o.smartindent  = true
o.autoindent = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true
o.wrap = false
o.hidden = true
o.laststatus = 2
o.showcmd = true
o.showmatch = true
o.completeopt = 'menu,menuone,noinsert'
o.pumheight = 5
o.cursorline = true

-- KEYBINDINGS / KEY-REMAPS
-- ====================================================================
vim.keymap.set('n', '<F5>', '<Esc>:!python %<CR>', { silent = true})
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc><S-O>', { silent = true})
vim.keymap.set('i', '<S-Tab>', '<Esc><<i', { silent = true})
vim.keymap.set('x', '<Tab>', '>', { silent = true})
vim.keymap.set('x', '<S-Tab>', '<', { silent = true})
vim.keymap.set('x', '"', 'c""<Esc>P', { silent = true})
vim.keymap.set('x', "'", "c''<Esc>P", { silent = true})
vim.keymap.set('x', '(', 'c()<Esc>P', { silent = true})
vim.keymap.set('x', '[', 'c[]<Esc>P', { silent = true})
vim.keymap.set('i', '<C-b>', '<Esc>:NvimTreeToggle<CR>', { silent = true})
vim.keymap.set('n', '<C-b>', '<Esc>:NvimTreeToggle<CR>', { silent = true})
vim.keymap.set('n', 'H', 'gT', { silent = true})
vim.keymap.set('n', 'L', 'gt', { silent = true})

-- NETRW CONFIG
-- ====================================================================
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_winsize = 30
g.netrw_altv = 1


-- -- Block commenting
-- -- ====================================================================
-- require('kommentary.config').use_extended_mappings()
-- 
-- -- Scrollbar
-- -- ====================================================================
-- require("scrollbar").setup()
-- 
-- -- SETUP CMP AUTOCOMPLETE
-- -- ====================================================================
-- local cmp = require'cmp'
-- 
--   cmp.setup({
--     snippet = {
--       expand = function(args)
--         vim.fn["vsnip#anonymous"](args.body)
--       end,
--     },
--     window = {
--       -- completion = cmp.config.window.bordered(),
--       -- documentation = cmp.config.window.bordered(),
--     },
--     mapping = cmp.mapping.preset.insert({
--       ['<C-k>'] = cmp.mapping.scroll_docs(-4),
--       ['<C-j>'] = cmp.mapping.scroll_docs(4),
--       ['<CR>'] = cmp.mapping.confirm({ select = true }),
-- 
--     }),
--     sources = cmp.config.sources({
--       { name = 'nvim_lsp' },
--       { name = 'vsnip' },
--     }, {
--       { name = 'buffer' },
--     })
--   })
-- 
--   -- Set configuration for specific filetype.
--   cmp.setup.filetype('gitcommit', {
--     sources = cmp.config.sources({
--       { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
--     }, {
--       { name = 'buffer' },
--     })
--   })
-- 
--   -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
--   cmp.setup.cmdline('/', {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = {
--       { name = 'buffer' }
--     }
--   })
-- 
--   -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--   cmp.setup.cmdline(':', {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = cmp.config.sources({
--       { name = 'path' }
--     }, {
--       { name = 'cmdline' }
--     })
--   })
-- 
-- -- LSP
-- -- ====================================================================
-- require("mason").setup()
-- require("mason-lspconfig").setup({
--     ensure_installed = { "pyright",
--                          "cssls",
--                          "intelephense",
--                          "eslint",
--                          "tsserver",
--                          "angularls",
--                          "rust_analyzer",
--                      }
-- })
-- 
-- -- Jump to definition shortcut. Using C-Left click can be cumbersome
-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
-- -- Open up a list of references in a quickfix window.
-- vim.keymap.set('n', 'gf', '<Esc>:lua vim.lsp.buf.references()<CR>', { silent = true})
-- -- Show info on hover and ctrl-space.
-- vim.keymap.set('n', '<C-Space>', '<Esc>:lua vim.lsp.buf.hover()<CR>', { silent = true})
-- 
-- 
--   -- Setup lspconfig.
--   local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
--   require('lspconfig')['pyright'].setup {
--     capabilities = capabilities
--   }
--   require('lspconfig')['intelephense'].setup {
--     capabilities = capabilities
--   }
--   require('lspconfig')['eslint'].setup {
--     capabilities = capabilities
--   }
--   require('lspconfig')['tsserver'].setup {
--     capabilities = capabilities
--   }
--   require('lspconfig')['angularls'].setup {
--     capabilities = capabilities
--   }
--   require('lspconfig')['cssls'].setup {
--     capabilities = capabilities
--   }
--   require('lspconfig')['gopls'].setup {
--     capabilities = capabilities
--   }
-- 
-- -- DON'T FORGET AFTER INSTALL :: TSInstall html/php/etc... + TSEnable autotag !!
-- require('nvim-ts-autotag').setup()
-- 
-- -- ====================================================================
-- -- TREE SITTER
-- -- ====================================================================
-- require'nvim-treesitter.configs'.setup {
--   -- A list of parser names, or "all"
--   ensure_installed = {
--         "vim",
--         "typescript",
--         "javascript",
--         "python",
--         "php",
--         "bash",
--         "c",
--         "lua",
--         "rust",
--         "html",
--         "css"
--   },
-- 
--   -- Install parsers synchronously (only applied to `ensure_installed`)
--   sync_install = false,
-- 
--   -- Automatically install missing parsers when entering buffer
--   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--   auto_install = true,
-- 
--   highlight = {
--     enable = true,
-- 
--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--     -- Using this option may slow down your editor, and you may see some duplicate highlights.
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
--   },
--   autotag = {
--     enable = true,
--   }
-- }
-- 
-- -- TELESCOPE SETUP AND KEYBINDS
-- -- ====================================================================
-- require('telescope').setup{
--   defaults = {
--     layout_strategy = 'vertical',
--     layout_config = { height = 0.95 },
--   },
--   pickers = {
--     find_files = {
--     },
--     live_grep = {
--     },
--     buffers = {
--     },
--     help_tags= {
--     }
--   },
--   extensions = {
--     -- ...
--   }
-- }
-- 
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<C-f>f', builtin.find_files, {})
-- vim.keymap.set('n', '<C-f>g', builtin.live_grep, {})
-- vim.keymap.set('n', '<C-f>b', builtin.buffers, {})
-- vim.keymap.set('n', '<C-f>h', builtin.help_tags, {})
-- vim.keymap.set('n', '<C-f>q', builtin.resume, {})
-- 
-- -- ====================================================================
-- 
-- -- NVIM TREE
-- -- ====================================================================
-- -- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- 
-- local function open_nvim_tree()
-- 
--   -- open the tree
--   require("nvim-tree.api").tree.open()
-- end
-- 
-- vim.api.nvim_create_autocmd({"VimEnter"}, {callback = open_nvim_tree })
-- 
-- require("nvim-tree").setup({
--   sort_by = "case_sensitive",
--   view = {
--     width = 30,
--     mappings = {
--       list = {
--         { key = "u", action = "dir_up" },
--       },
--     },
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
-- 
-- -- COLORS
-- -- ====================================================================
-- vim.cmd("colorscheme nightfox")
-- vim.cmd(":hi MatchParen cterm=bold ctermfg=yellow ctermbg=darkgrey")
-- vim.cmd('set fillchars=vert:\\┃,fold:\\┄')
-- vim.cmd('highlight VertSplit guifg=#ff8800 guibg=NONE')
-- vim.cmd('highlight Visual guibg=#4e5a6d guifg=NONE')
-- vim.cmd('highlight MatchParen ctermbg=yellow guibg=yellow')
-- 
-- -- LUALINE
-- -- ====================================================================
-- require('lualine').setup {
--     options = {
--         theme = 'dracula'
--     },
--     sections = {
--         lualine_a = {
--             {
--               'filename',
--               file_status = true, -- displays file status (readonly status, modified status)
--               path = 2 -- 0 = just filename, 1 = relative path, 2 = absolute path
--             }
--         }
--     }
-- }
-- 
-- -- INDENT INDENT-BLANKLINE
-- -- ===============================================================
-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- 
-- require("indent_blankline").setup {
--     space_char_blankline = " ",
--     show_current_context = true,
--     show_current_context_start = true,
-- }


-- PLUGINS
-- ====================================================================
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'windwp/nvim-ts-autotag'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons',
      },
      tag = 'nightly'
    }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'b3nj5m1n/kommentary'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'petertriho/nvim-scrollbar'
    use "EdenEast/nightfox.nvim"
    use "lukas-reineke/indent-blankline.nvim"
end)
