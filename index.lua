LuaOOPTemplate = {}

local import = LuaOOPTemplate
import.Functions = require 'Lua-OOP-template.functions'
extendedClass, assignClass = import.Functions.extendedClass, import.Functions.assignClass

import.create = {}
import.create.Person = require 'Lua-OOP-template.create'

import.inheritance = {}
import.inheritance.Woman = require 'Lua-OOP-template.inheritance'

import.encapsulation = {}
import.encapsulation.Person = require 'Lua-OOP-template.encapsulation'

import.polymorphism = require 'Lua-OOP-template.polymorphism'

-- LuaOOPTemplate = {
--     Functions = require 'Lua-OOP-template.functions',
--     create = {
--         Person = require 'Lua-OOP-template.create'
--     },
--     inheritance = {
--         Woman = require 'Lua-OOP-template.inheritance'
--     },
--     encapsulation = {
--         Person = require 'Lua-OOP-template.encapsulation'
--     },
--     polymorphism = require 'Lua-OOP-template.polymorphism'
-- }
-- local import = LuaOOPTemplate