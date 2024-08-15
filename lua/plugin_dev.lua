package.path = package.path .. ";" .. vim.fn.expand "~/Desktop/programming/lua-plugins/config-helper/lua/?.lua"
package.path = package.path .. ";" .. vim.fn.expand "~/Desktop/programming/lua-plugins/config-helper/lua/?/init.lua"
require("config-helper").setup {}
