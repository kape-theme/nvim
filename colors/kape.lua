-- colors/kape.lua
-- Neovim colorscheme entry point.
-- Neovim sources this file when the user does `colorscheme kape`.

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name   = "kape"

-- Stash the current user config before we purge package.loaded.
-- We use a plain _G global so the reference survives module eviction.
-- Function values (override, override_scheme) are preserved intact.
_G.__kape_saved_config = nil
if package.loaded["kape"] and type(package.loaded["kape"].get_config) == "function" then
  _G.__kape_saved_config = package.loaded["kape"].get_config()
end

-- Clear the module cache so edits to any kape.* module take effect immediately.
for k in pairs(package.loaded) do
  if k:match("^kape") then
    package.loaded[k] = nil
  end
end

-- Re-apply the saved config (if any) so highlights use the user's settings,
-- then load the colorscheme.
local ok, kape = pcall(require, "kape")
if ok then
  if _G.__kape_saved_config then
    kape.setup(_G.__kape_saved_config)
    _G.__kape_saved_config = nil
  end
  kape.load()
end
