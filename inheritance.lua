local Person = LuaOOPTemplate.create.Person
local print = LuaOOPTemplate.Functions.print

---@class Woman:Person
local Woman = {} ---@type Woman
--наследуемся
Woman = extendedClass(Person)
--проверяем
local masha = Woman:new('Марья', 'Ивановна')
print(masha:getName()) --> результат: Марья

return Woman