--[[
    SYSTEM CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

System = Class{}

function System:init(targets)
    assert(type(targets) == 'table', 'System:init -> targets must be a table of components')

    self.targets = targets
end

function System:matches(entity)
    for _,target in pairs(self.targets) do
        if not entity:hasComponent(target) then return false end
    end

    return true
end

function System:load(entity) end

function System:update(entity, dt) end

function System:draw(entity) end

function System:destroy(entity) end