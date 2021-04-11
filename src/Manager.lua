--[[
    MANAGER PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function()
    local Manager = {
        entities = {},
        systems = {}
    }

    function Manager:createSystem(targets)
        local system = System(targets)

        table.insert(self.systems, system)

        return system
    end

    function Manager:createEntity(components)
        assert(type(components), 'Manager:createEntity -> requires a table of tables')

        local entity = Entity(uuid())

        for _,component in pairs(components) do
            local fn = component[1]

            assert(type(fn) == 'function', 'Manager:createEntity -> first argument must be a component constructor')

            if #component == 1 then
                entity:addComponent(fn())
            else
                local props = component[2]

                assert(type(props) == 'table', 'Manager:createEntity -> Component constructor requires a table of properties')

                entity:addComponent(fn(props))
            end
        end

        table.insert(self.entities, entity)

        return entity
    end

    function Manager:update(dt)
    end

    function Manager:draw()
    end

    return Manager
end