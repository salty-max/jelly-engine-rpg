--[[
    Manager PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function()
    local Manager = {
        entities = {},
        systems = {}
    }

    function Manager:assemble(systems)
        for _,system in pairs(systems) do
            table.insert(self.systems, system)
        end
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
        for _,entity in pairs(self.entities) do
            for _,system in pairs(self.systems) do
                if system:matches(entity) then
                    system:update(entity, dt)

                    if not entity.loaded then
                        system:load(entity)
                    end
                end
            end

            entity.loaded = true
        end
    end

    function Manager:draw()
        for _,entity in pairs(self.entities) do
            for _,system in pairs(self.systems) do
                if system:matches(entity) then
                    system:draw(entity)
                end
            end
        end
    end

    return Manager
end