--[[
    xdebug.lua is a nice script I made which can easily
    introduce a --debug flag for whatever program you want,
    and it can be used to display debug messages whenever the flag
    is enabled. Enjoy!

    USAGE:

    if xdebug.parse_debug_flag() then
      print("Debug mode enabled")
      -- you can replace the print() code with whatever you want
    end

]]

local M = {}

-- Function for checking for the debug arg/flag
function M.parse_debug_flag()
  local xdebug = false
  for i, arg in ipairs(arg) do
    if arg == "--debug" then
      xdebug = true
      break
    end
  end
  return xdebug
end

-- Function for returning debug messages
function M.debugMessage(message)
  if xdebug_mode then
      print(message)
  end
end

return M