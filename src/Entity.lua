--[[
    ENTITY PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function(id)
    assert(id, 'Entity constructor needs an identifier')

    local Entity = {
        __id = id,
        components = {},
        loaded = false,
        remove = false
    }

    function Entity:addComponent(component)
        self.components[component.__id] = component
    end

    function Entity:getComponent(id)
        return self.components[id]
    end

    function Entity:hasComponent(id)
        return self.components[id] ~= nil
    end

    -- return setmetatable(Entity, {
    --     __index = function(self, key)
    --         return self.components[key]
    --     end
    -- })

    return Entity
end