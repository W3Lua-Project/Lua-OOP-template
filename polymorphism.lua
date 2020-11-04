local print = LuaOOPTemplate.Functions.print

local Person = {} ---@type Person
function Person:new(name)
    local private = {
        age = 18
    }

    local public = {
        name = name or "Вася"
    }

    --это защищенный метод, его нельзя переопределить
    function public:getName()
        return "Person protected "..self.name
    end

    --это открытый метод, его можно переопределить
    function Person:getName2()
        return "Person "..self.name
    end

    -- assignClass(public, self)
    setmetatable(public, self)
    self.__index = self
    return public
end

--создадим класс, унаследованный от Person
---@type Woman
local Woman = extendedClass(Person)  --не забываем про эту функцию

--переопределим защищенный метод 
function Woman:getName()
    return "Woman protected "..self.name
end

--переопределим метод getName2()
function Woman:getName2()
    return "Woman "..self.name
end

--проверим
local masha = Woman:new()

print(masha:getName())   --> Person protected Вася

print(masha:getName2())  --> Woman Вася

return { Person = Person, Woman = Woman }