local export = {}

function export.assignClass(obj,class)
    setmetatable(obj,class)
    class.__index = class
end

function export.extendedClass(parent)
    local child = {}
    setmetatable(child, {__index = parent})
    return child
end

local isDebug = true
function export.print(output)
    if isDebug then
        print(output)
    end
end
export.isDebug = isDebug

return export