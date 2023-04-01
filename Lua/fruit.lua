-- Messing with dictionaries and user input in Lua.

fruits = {
    apple = "red",
    cherry = "red",
    banana = "yellow",
    lemon = "yellow",
    orange = "orange",
    kiwi = "green",
    lime = "green", -- limes are lime-colored, actually.
    ["not lime"] = "We're not sure, but it's not a lime. That's for certain."
    -- Who comes up with this stuff? ME!
}

print("Type a fruit: ")
s = string.lower(io.read()) -- Super cool lowercase technology.

if fruits[s] == nil then
    print("'" .. s .. "' does not exist in the dictionary.")
else
    print("Color: " .. fruits[s])
end
