--[[
  A basic calculator in Lua  
]]

xdebug_mode = false

local xdebug = require("xdebug")

if xdebug.parse_debug_flag() then
  print("Debug mode enabled")
  xdebug_mode = true
end

print("Enter a number: ")
x = tonumber(io.read())
message = "Received variable 'x' (".. x .."), type " .. type(x)
xdebug.debugMessage(message)

print("Enter another number: ")
y = io.read()
message = "Received variable 'y' (".. y .."), type " .. type(y)
xdebug.debugMessage(message)

print("Enter an operator (+,-,/ or *):")
op = io.read()
message = "Received variable 'op' (".. op .."), type " .. type(op)
xdebug.debugMessage(message)

if op == "+" then
    z = x + y
elseif op == "-" then
    z = x - y
elseif op == "/" then
    z = x / y
elseif op == "*" then
    z = x * y
else
    print("Invalid operator")
end

print("Sum: " .. z)