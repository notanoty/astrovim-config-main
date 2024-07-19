-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)
-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- hello
require "lazy_setup"
require "polish"
require("astroui").setup {}
require("notify").setup {
  background_colour = "#1e1e1e", -- A dark gray color
}

-- Add the plugin directory to runtimepath
-- vim.opt.runtimepath:append(vim.fn.expand "~/Desktop/programming/lua-plugin")
-- vim.opt.runtimepath:append(vim.fn.expand "~/Desktop/programming/lua-plugins/config-helper")
-- Adjust Lua's package.path to include the directory
-- package.path = package.path .. ";" .. vim.fn.expand "~/Desktop/programming/lua-plugins/config-helper/lua/?.lua"
-- package.path = package.path .. ";" .. vim.fn.expand "~/Desktop/programming/lua-plugins/config-helper/lua/?/init.lua"

-- Require the plugin
-- require("config-helper").setup {}
