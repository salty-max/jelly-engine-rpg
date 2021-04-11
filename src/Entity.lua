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
        components = {}
    }

    function Entity:addComponent(component)
        self.components[component.__id] = component
    end

    function Entity:getComponent(id)
        return self.components[id]
    end

    return Entity
end