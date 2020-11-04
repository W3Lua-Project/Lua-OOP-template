---@class Woman:Person
local Woman = {} ---@type Woman
local Person = LuaOOPTemplate.create.Person
local print = LuaOOPTemplate.Functions.print
--наследуемся
Woman = extendedClass(Person)
--проверяем
local masha = Woman:new('Марья', 'Ивановна')
print(masha:getName()) --> результат: Марья

return Woman