local print = LuaOOPTemplate.Functions.print

local Person = {} ---@type Person

function Person:new(name)
    local private = {
        --приватное свойство
        age = 18
    }

    local public = {
        --публичное свойство
        name = name or 'Вася' -- 'Вася' - это значение по умолчанию
    }
    --публичный метод
    function public:getAge()
        return private.age
    end

    assignClass(public, self)
    return public
end

local vasya = Person:new()

print(vasya.name) --> результат: Вася

print(vasya.age) --> результат: nil

print(vasya:getAge()) --> результат: 18

return Person