function assignClass(obj,class)
    setmetatable(obj,class)
    class.__index = class
end

function extendedClass(parent)
    local child = {}
    setmetatable(child, {__index = parent})
    return child
end


local isDebug = true
local function _print(output)
    if isDebug then
        print(output)
    end
end

LuaOOPTemplate.Functions = {
    isDebug = isDebug,
    print = _print
}