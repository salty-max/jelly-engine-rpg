local ShapeRenderer = require "src.systems.ShapeRenderer"
local PhysicsEngine = require "src.systems.PhysicsEngine"
local PlayerController = require "src.systems.PlayerController"
--[[
    GAME PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function()
    local Game = {
        entityManager = EntityManager(),
    }

    function Game:init()
        local shapeRenderer = ShapeRenderer(self.entityManager)
        local physicsEngine = PhysicsEngine(self.entityManager)
        local playerController = PlayerController(self.entityManager)

        local player = self.entityManager:createEntity {
            { Transform, { x = 8, y = 8, width = 8, height = 8 } },
            { Shape, { type = 'rect', color = { 1, 0, 0, 1 }, fill = 'fill' } },
            { Physics, { speed = PLAYER_WALK_SPEED, friction = 0.04 } },
            { Player },
        }
    end

    function Game:update(dt)
        self.entityManager:update(dt)
    end

    function Game:draw()
        self.entityManager:draw()
    end

    return Game
end