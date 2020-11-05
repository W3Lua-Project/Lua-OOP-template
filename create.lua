local print = LuaOOPTemplate.Functions.print

--класс
---@class Person
local Person = {}
--тело класса
function Person:new(fName, lName)
    
    -- свойства
    local obj = {
        firstName = fName,
        lastName = lName
    }

    -- метод
    function obj:getName()
        return self.firstName
    end

    --чистая магия!
    assignClass(obj, self)
    return obj
end

--создаем экземпляр класса
local vasya = Person:new("Вася", "Пупкин")

--обращаемся к свойству
print(vasya.firstName)  --> результат: Вася

--обращаемся к методу
print(vasya:getName())  --> результат: Вася

LuaOOPTemplate.create = {
    Person = Person
}