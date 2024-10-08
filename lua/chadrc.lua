-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "everforest_light",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

vim.cmd("highlight St_relativepath guifg=#626a83 guibg=#2a2b36")
vim.cmd [[

   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=#282a2e
   augroup END

]]

local stbufnr = function()
  return vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
end


M.ui = {
  statusline = {
    theme = "default",
    order = { "mode", "relativepath", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    modules = {
      relativepath = function()
        local path = vim.api.nvim_buf_get_name(stbufnr())

        if path == "" then
          return ""
        end

        return "%#St_relativepath#  " .. vim.fn.expand("%:.:h") .. " /"
      end,
    },
  },
}

return M
