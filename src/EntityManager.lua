--[[
    EntityManager PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function()
    local EntityManager = {
        entities = {},
        systems = {}
    }

    function EntityManager:createSystem(targets)
        local system = System(targets)
        
        table.insert(self.systems, system)
        
        return system
    end

    function EntityManager:createEntity(components)
        assert(type(components), 'EntityManager:createEntity -> requires a table of tables')

        local entity = Entity(uuid())

        for _,component in pairs(components) do
            local fn = component[1]

            assert(type(fn) == 'function', 'EntityManager:createEntity -> first argument must be a component constructor')

            if #component == 1 then
                entity:addComponent(fn())
            else
                local props = component[2]

                assert(type(props) == 'table', 'EntityManager:createEntity -> Component constructor requires a table of properties')

                entity:addComponent(fn(props))
            end
        end

        table.insert(self.entities, entity)

        return entity
    end

    function EntityManager:update(dt)
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

    function EntityManager:draw()
        for _,entity in pairs(self.entities) do
            for _,system in pairs(self.systems) do
                if system:matches(entity) then
                    system:draw(entity)
                end
            end
        end
    end

    return EntityManager
end