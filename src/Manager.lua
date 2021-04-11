--[[
    MANAGER CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

Manager = Class{}

function Manager:init()
    self.entities = {}
    self.systems = {}
end

function Manager:assemble(systems)
    for _,system in pairs(systems) do
        table.insert(self.systems, system)
    end
end

function Manager:createEntity(components)
    assert(type(components), 'Manager:createEntity -> requires a table of tables')

    local entity = Entity(uuid())

    for _,component in pairs(components) do
        entity:addComponent(component)
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