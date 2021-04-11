--[[
    SYSTEM PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(targets)
    assert(type(targets) == 'table', 'Filter constructor requires a table of components')
    
    local System = {
        targets = targets
    }

    function System:matches(entity)
        for _,target in pairs(self.targets) do
            if not entity:hasComponent(target) then return false end
        end

        return true
    end

    function System:load(self, entity) end

    function System:update(self, entity, dt) end

    function System:draw(self, entity) end

    function System:destroy(self, entity) end

    return System
end