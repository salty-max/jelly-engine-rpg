--[[
    GAME PROTOTYPE
    JELLY ENGINE RPG
    Maxime Blanc
    https://github.com/salty-max
]]

return function()
    local Game = {
        Manager = Manager(),
    }

    function Game:init()
        self.Manager:assemble {
            SpriteRenderer(),
            PhysicsEngine(),
            PlayerController(),
        }

        local player = self.Manager:createEntity {
            { Transform, { x = 8, y = 8, width = 24, height = 24 } },
            { Sprite, { texture = 'creatures', frame = 3 } },
            { Physics, { speed = PLAYER_WALK_SPEED, friction = 0.04 } },
            { Player },
        }
    end

    function Game:update(dt)
        self.Manager:update(dt)
    end

    function Game:draw()
        self.Manager:draw()
    end

    return Game
end