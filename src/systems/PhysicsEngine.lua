--[[
    PHYSICS ENGINE SYSTEM CLASS
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

PhysicsEngine = Class{__includes = System}

function PhysicsEngine:init()
    System.init(self, { 'transform', 'physics' })
end

function PhysicsEngine:update(entity, dt)
    local physics = entity:getComponent 'physics'
    local transform = entity:getComponent 'transform'

    transform.x = transform.x + physics.dx * dt
    transform.y = transform.y + physics.dy * dt

    physics.dx = physics.dx * math.pow(physics.friction, dt)
    physics.dy = physics.dy * math.pow(physics.friction, dt)
end