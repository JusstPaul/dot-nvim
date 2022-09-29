require('core')
require('keys')
require('plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_wsl = function()
  local out = os.getenv('WSL_DISTRO_NAME')
  return not (out == nil or out == '')
end

if is_wsl() then
  require('wsl')
end
