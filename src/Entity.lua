--[[
    ENTITY CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Entity = Class {}

function Entity:init(id)
    assert(type(id) == 'string', 'Entity:init -> id must be a string')
    self.id = id
    self.components = {}
    self.loaded = false
    self.remove = false
end

function Entity:addComponent(component)
    self.components[component.id] = component
end

function Entity:getComponent(id)
    return self.components[id]
end

function Entity:hasComponent(id)
    return self.components[id] ~= nil
end