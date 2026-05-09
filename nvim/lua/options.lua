require "nvchad.options"

-- add yours here!
local o = vim.o

o.expandtab   = false  -- use real tabs, not spaces
o.tabstop     = 4      -- tab displays as 4 columns wide
o.shiftwidth  = 4      -- >> and << indent by 4

o.cursorline    = true
o.cursorlineopt = "both"  -- highlight both the line and the line number