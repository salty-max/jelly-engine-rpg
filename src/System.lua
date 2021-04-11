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

    function System:load(self, entity) end

    function System:update(self, entity, dt) end

    function System:draw(self, entity) end

    function System:destroy(self, entity) end

    return System
end