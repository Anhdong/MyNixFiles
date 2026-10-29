vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true        -- tabs -> spaces
vim.opt.smartindent = true

-- behavior
vim.opt.mouse = "a"
vim.opt.updatetime = 250      -- faster CursorHold events (diagnostics, git signs)
vim.opt.timeoutlen = 300      -- how long to wait for the next key in a mapping
vim.opt.clipboard = "unnamedplus"  -- share yank/paste with system clipboard
vim.opt.undofile = true            -- persistent undo across sessions
vim.opt.swapfile = false
vim.opt.confirm = true             -- ask instead of failing on unsaved quit
vim.opt.foldlevelstart = 99 -- not fold when start
vim.opt.wrap = false

-- search
vim.opt.ignorecase = true     -- search ignores case...
vim.opt.smartcase = true      -- ...unless you type a capital letter
vim.opt.hlsearch = true       -- highlight all matches
vim.opt.incsearch = true      -- show matches while typing the search
vim.opt.inccommand = "split"  -- live preview of :s substitutions
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Clear search highligh with esc

-- UI
vim.opt.termguicolors = true  -- full 24-bit colors (needed by most colorschemes)
vim.opt.signcolumn = "yes"    -- always reserve the left column so the text doesn't jump when diagnostics or git signs appear
vim.opt.scrolloff = 8         -- keep 8 lines visible above/below the cursor
vim.opt.splitright = true     -- vertical splits open on the right
vim.opt.splitbelow = true     -- horizontal splits open below

-- Command line
vim.opt.cmdheight = 0
vim.opt.showmode = false  -- lualine already shows the mode
vim.opt.showcmd = false   -- pending keys have nowhere to draw with no command row
vim.opt.ruler = false     -- lualine already shows the location
